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
        <img src="http://localhost/facebooksysag/upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="login.php">Home</a>
        </li>
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
        var valutations = <?php echo json_encode($valutations); ?>;
        new Chart(document.getElementById("doughnut-chart"), {
              type: 'doughnut',
              data: {
                labels: ["Gradimento 1", "Gradimento 2", "Gradimento 3", "Gradimento 4", "Gradimento 5"],
                datasets: [
                  {
                    label: "Valutazione Gradimento",
                    backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                    data: valutations
                  }
                ]
              },
              options: {
                title: {
                  display: true,
                  text: 'Risposte degli utenti sul gradimento dei coupon ricevuti'
                }
              }
          });
        </script>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<!-- FOOTER -->
<footer class="footer discount-background">
    <div class="container" style="max-width: inherit;">
        <div class="row" style="padding:2%; color:white;">
            <div class="col-12">
                <p>Copyright 2019 - DGM Group</p>
            </div>
        </div>
    </div>
<footer>

<?php

function getAnswerByValutation($db){
  $valutations = $db->countAnswer();
  $result = [];
  foreach ($valutations as $valutation => $value) {
    array_push($result, $value['count(id)']);
  }
  return $result;
}

function getUserAnswers($db){
  $answers = $db->getAnswers();
  $result = [];
  foreach ($answers as $key => $value) {
    $val = array($value['_user'] => $value['valutation']);
    array_push($result, $val);
  }
  return $result;
}

?>

<script src="/facebooksysag/lib/jquery/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
