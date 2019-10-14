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
$loginUrl = $helper->getLoginUrl('http://localhost/facebooksys/fb-callback.php', $permissions);

echo '<a href="' . $loginUrl . '">Accedi con Facebook!</a>';

?>
