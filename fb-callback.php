<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();
$facebook = new FacebookManager();

$me = $facebook->getUserInfo();
$user_likes_edge = $facebook->getUserLikes();

print "Benvenuto " . $me->getName() . "\n";

$user_id = (int) $me->getId();
$user_name = $me->getName();
$db_connection->createUser($user_id, $user_name);

addUserLikes($user_likes_edge, $db_connection, $user_id);

$top_like = $db_connection->getTopUserLikes();
printLikes($top_like);

require_once("fb-export.php");

$db_connection->closeDbConnection();



function printLikes($likes){
  foreach ($likes as $like) {
      echo $like['nome_categoria'] . " " . $like['counter'] ."<br />\n";
  }
}


function addUserLikes($likes, $db, $id){
  if ($likes === null) {
    echo "Ops, devi accettare che l'app acceda ai tuoi likes";
  } else {
    print "<h2> Interessi: </h2>";

    $category=array();
    foreach ($likes as $value) {
      array_push($category, $value['category']);
    }

    $vals = array_count_values($category);

    foreach($vals as $key => $value){
      $db->insertUserLikes($key, $value, $id);
    }
  }
}

?>
