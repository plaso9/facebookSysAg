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
$protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http";
$host = $_SERVER["HTTP_HOST"];
$dir_root = $protocol . "://" . $host . "/facebooksysag"; 

$permissions = ['email']; // Optional permissions
//$loginUrl = $helper->getLoginUrl('http://localhost/facebooksysag/fb-callback.php', $permissions);
$loginUrl = $helper->getLoginUrl($dir_root.'/fb-callback.php', $permissions);

?>

<div class="container">
    <div class="columns">
		<div class="column col-12" style="height: 160px;">
		</div>
	</div>
    <form class="discount-background">
        <div class="row" style="padding:1%">
            <div class="col-5 col-sm-5">
                <img class="img-adapter" src="upload/discounts.jpg" alt="Discount">
            </div>
            <div class="col-7 col-sm-7">
                <div class="row" style="padding:1%">
                    <div class="col-2 col-sm-2"></div>
                    <div class="col-8 col-sm-8">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                    </div>
                    <div class="col-2 col-sm-2"></div>
                </div>
                <div class="row" style="padding:1%">
                    <div class="col-2 col-sm-2"></div>
                    <div class="col-8 col-sm-8">
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                    </div>
                    <div class="col-2 col-sm2"></div>
                </div>
                <div class="row" style="padding:1%">
                    <div class="col-3 col-sm-3"></div>
                    <div class="col-6 col-sm-6" style="text-align:center">
                        <button type="submit" class="btn discount-btn" style="display:inline-block; width:inherit">Accedi</button>
                    </div>
                    <div class="col-3 col-sm-6"></div>
                </div>
                <div class="row" style="padding:1%">
                    <div class="col-3 col-sm-3"></div>
                    <div class="col-6 col-sm-6" style="text-align:center">
                        <a href="<?= $loginUrl ?>" class="btn btn-primary" style="display:inline-block; width:inherit">Accedi con Facebook</a>
                    </div>
                    <div class="col-3 col-sm-3"></div>
                </div>
            </div>        
        </div>
    </form>
</div>
<?php
