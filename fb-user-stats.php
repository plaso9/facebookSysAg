<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.min.js"></script>

<?php
include ('utils/DatabaseManager.php');

$db_connection = new DatabaseManager();

$category = getCategoryByValutation($db_connection);
$users_answer = getUserCategory($db_connection);
?>

<nav class="navbar navbar-expand-lg navbar-light discount-background">
    <a class="navbar-brand" href="login.php">
        <img src="upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
              <a class="nav-link" href="fb-stats.php">Statistiche Sistema</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="fb-user-stats.php">Statistiche Utenti</a>
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
        <canvas id="bar-chart-horizontal" width="800" height="450"></canvas>
        <script>
        var ctx = document.getElementById("bar-chart-horizontal");
        var category = <?php echo json_encode($category); ?>;

        var data = {
          labels: generateDoughnutLabel(category),
          datasets: [{
            label: "Valutazione Categorie",
            data: generateDoughnutData(category),
            backgroundColor : generateBackgroundColor(category)
          }]
        };

        var doughnutChart = new Chart(ctx, {
              type: 'horizontalBar',
              data: data,
              options: {
                legend: { display: false },
                title: {
                  display: true,
                  text: 'Categorie preferite dagli Utenti'
                },
                scales: {
                    xAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
              }
          });

          function generateBackgroundColor(len) {
            var data = [];
            for (i = 0; i < (len.length); i++) {
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

          function generateDoughnutData(category) {
            var i;
            var data = [];
            var counter = 0;

            for (i = 0; i < category.length; i++) {
              for (const [key, value] of Object.entries(category[i])) {
                counter = parseFloat(value);
                data.push(counter);
              }
      			}
			      return data;
      		}

          function generateDoughnutLabel(category){
            var i;
            var data = [];
            var val = "";
            for (i = 0; i < category.length; i++) {
              for (const [key, value] of Object.entries(category[i])) {
                val = String(key);
                data.push(val);
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
                  text: 'Media risposte per Categoria'
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
            for (i = 0; i < (answers.length); i++) {
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
function getCategoryByValutation($db){
  $valutations = $db->countCategory();
  $result = [];
  foreach ($valutations as $valutation => $value) {
    $val = array($value['category'] => $value['count']);
    array_push($result, $val);
  }
  return $result;
}

function getUserCategory($db){
  $answers = $db->getCategory();
  $result = [];
  foreach ($answers as $key => $value) {
    $val = array($value['category'] => $value['avg']);
    array_push($result, $val);
  }
  return $result;
}
?>

<script src="/facebooksysag/lib/jquery/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
