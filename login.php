<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

<?php
require_once __DIR__ . '/vendor/autoload.php';
if(!session_id()) {
    session_start();
}
$fb = new Facebook\Facebook([
  'app_id' => '1106389556223583',
  'app_secret' => '0a8d71af37372994b389beaa42692619',
  'default_graph_version' => 'v2.10',
  ]);

$helper = $fb->getRedirectLoginHelper();

$permissions = ['email']; // Optional permissions
$loginUrl = $helper->getLoginUrl('http://localhost/facebooksysag/fb-callback.php', $permissions);
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
        <?php echo '<a href="' . $loginUrl . '">Accedi con Facebook!</a>';?>
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
