<?php
include ('utils/db_connector.php');
require_once __DIR__ . '/vendor/autoload.php';

$db_connection = new DatabaseConnection();


if(!session_id()) {
    session_start();
}
$fb = new Facebook\Facebook([
  'app_id' => '1106389556223583',
  'app_secret' => '0a8d71af37372994b389beaa42692619',
  'default_graph_version' => 'v2.10',
  ]);

$helper = $fb->getRedirectLoginHelper();

try {
  $accessToken = $helper->getAccessToken();
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  // When Graph returns an error
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  // When validation fails or other local issues
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

if (! isset($accessToken)) {
  if ($helper->getError()) {
    header('HTTP/1.0 401 Unauthorized');
    echo "Error: " . $helper->getError() . "\n";
    echo "Error Code: " . $helper->getErrorCode() . "\n";
    echo "Error Reason: " . $helper->getErrorReason() . "\n";
    echo "Error Description: " . $helper->getErrorDescription() . "\n";
  } else {
    header('HTTP/1.0 400 Bad Request');
    echo 'Bad request';
  }
  exit;
}

// Logged in

$_SESSION['fb_access_token'] = (string) $accessToken;

try {
  $response = $fb->get('/me', $accessToken);
} catch(\Facebook\Exceptions\FacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(\Facebook\Exceptions\FacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

$me = $response->getGraphUser();

try {
  //   $response = $fb->get('/me?fields=likes{category,description,about},about,address,birthday,education,email,favorite_teams,favorite_athletes,political,relationship_status,religion,hometown,work,gender,photos{picture},posts{link,created_time,description,id,message}', $accessToken);

  $response = $fb->get('/me/likes?fields=category&limit=100', $accessToken);
} catch(FacebookExceptionsFacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(FacebookExceptionsFacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

$graphEdge = $response->getGraphEdge();

print "Benvenuto " . $me->getName() . "\n";

$user_id = (int) $me->getId();
$user_name = $me->getName();

$db_connection->insert("INSERT INTO user(id_user, nome) VALUES ($user_id, '$user_name')");

if ($graphEdge === null) {
  echo "Ops, devi accettare che l'app acceda ai tuoi likes";
} else {
  print "<h2> Interessi: </h2>";

  $category=array();

  foreach ($graphEdge as $value) {
    array_push($category, $value['category']);
  }

  $vals = array_count_values($category);

  foreach($vals as $key => $value){
    //echo $key . " - " . $value . "<br>";
    $db_connection->insert("INSERT INTO likes(nome_categoria, counter, user_id) VALUES ('$key', $value, $user_id)");
  }
  require_once("fb-export.php");
}


$result = $db_connection->select("SELECT nome_categoria, counter, user_id FROM likes ORDER BY counter DESC LIMIT 5");

foreach ($result as $row) {
    echo $row['nome_categoria'] . " " . $row['counter'] ."<br />\n";
}

$db_connection->closeConnection();




?>
