<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.min.js"></script>

<?php
include ('utils/DatabaseManager.php');

$db_connection = new DatabaseManager();

$valutations = getAnswerByValutation($db_connection);
$users_answer = getUserAnswers($db_connection);
?>

<nav class="navbar navbar-expand-lg navbar-light discount-background">
    <a class="navbar-brand" href="login.php">
        <img src="upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="fb-stats.php">Vedi Statistiche</a>
        </li>
        </ul>
        <span class="navbar-text"></span>
    </div>
</nav>

<!-- CONTAINER -->
<div class="container" style="max-width: inherit;">
    <div class="row" style="padding:2%">
        <div class="col-2"></div>
        <div class="col-8">

        <!-- GRAFICO 1 -->
        <canvas id="doughnut-chart" width="800" height="450"></canvas>
        <script>
        var ctx = document.getElementById("doughnut-chart");
        var valutations = <?php echo json_encode($valutations); ?>;

        var data = {
          labels: generateDoughnutLabel(valutations),
          datasets: [{
            label: "Valutazione Gradimento",
            data: generateDoughnutData(valutations),
            backgroundColor : generateBackgroundColor(valutations)
          }]
        };

        var doughnutChart = new Chart(ctx, {
              type: 'doughnut',
              data: data,
              options: {
                title: {
                  display: true,
                  text: 'Risposte degli utenti sul gradimento dei coupon ricevuti'
                }
              }
          });

          function generateBackgroundColor(valutations) {
            var data = [];
            for (i = 0; i < (valutations.length); i++) {
              data.push(getRandomColor());
      			}
			      return data;
      		}

          function getRandomColor() {
              var letters = '0123456789ABCDEF'.split('');
              var color = '#';
              for (var i = 0; i < 6; i++ ) {
                  color += letters[Math.floor(Math.random() * 16)];
              }
              return color;
          }

          function generateDoughnutData(valutations) {
            var i;
            var data = [];
            var counter = 0;

            for (i = 0; i < valutations.length; i++) {
              for (const [key, value] of Object.entries(valutations[i])) {
                counter = parseFloat(value);
                data.push(counter);
              }
      			}
			      return data;
      		}

          function generateDoughnutLabel(valutations){
            var i;
            var data = [];
            var val = "";
            for (i = 0; i < valutations.length; i++) {
              for (const [key, value] of Object.entries(valutations[i])) {
                val = String(key);
                data.push("Gradimento " + val);
              }
      			}
			      return data;
      		}
        </script>

        <br><br><br><br><br><br>

        <!-- GRAFICO 2 -->
        <canvas id="mixed-chart" width="800" height="450"></canvas>
        <script>
        var ctx = document.getElementById("mixed-chart");
        var answers = <?php echo json_encode($users_answer); ?>;

        var data = {
    			labels: generateLabel(answers),
    			datasets: [{
    				data: generateData(answers),
            backgroundColor : generateBackgroundColor(answers)
    			}]
    		};

        var mixedChart = new Chart(ctx, {
              type: 'bar',
              data: data,
              options: {
                title: {
                  display: true,
                  text: 'Media risposte gradimento per Utente'
                },
                legend: { display: false },
                responsive: true,
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
              }
          });

          function generateBackgroundColor(answers) {
            var data = [];
            for (i = 0; i < (answers.length)/2; i++) {
              data.push(getRandomColor());
      			}
			      return data;
      		}

          function getRandomColor() {
              var letters = '0123456789ABCDEF'.split('');
              var color = '#';
              for (var i = 0; i < 6; i++ ) {
                  color += letters[Math.floor(Math.random() * 16)];
              }
              return color;
          }

          function generateData(answers) {
            var ans_c = 0;
            var data = [];
            var cur_user, user = "";
            var ans = 0.00;
            var media = 0.00;

            for (var i = 0; i < answers.length; i++) {
              for (const [key, value] of Object.entries(answers[i])) {
                cur_user = String(key);
                ans = parseFloat(value);
              }
              if(cur_user!= user){
                if(ans_c!=0){
                  media = media/(ans_c);
                  data.push(media);
                  media = 0.00;
                  ans_c = 0;
                }
                user = cur_user;
                media += ans;
              }else{
                media += ans;
              }
              ans_c++;
              if(i==answers.length-1){
                media = media/(ans_c);
                data.push(media);
              }
            }
			      return data;
      		}

          function generateLabel(answers) {
            var i;
            var data = [];
            var user, user_temp = "";

            for (i = 0; i < answers.length; i++) {
              for (const [key, value] of Object.entries(answers[i])) {
                user = String(key);
                ans = parseFloat(value);
              }
              if(user != user_temp){
                data.push(user);
              }
              user_temp = user;
      			}
			      return data;
      		}
        </script>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<?php
function getAnswerByValutation($db){
  $valutations = $db->countAnswer();
  $result = [];
  foreach ($valutations as $valutation => $value) {
    $val = array($value['valutation'] => $value['count(id)']);
    array_push($result, $val);
  }
  return $result;
}

function getUserAnswers($db){
  $answers = $db->getAnswers();
  $result = [];
  foreach ($answers as $key => $value) {
    $val = array($value['nome'] => $value['valutation']);
    array_push($result, $val);
  }
  return $result;
}
?>

<script src="/facebooksysag/lib/jquery/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
