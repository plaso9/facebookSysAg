<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();
$facebook = new FacebookManager();

$me = $facebook->getUserInfo();
$user_likes_edge = $facebook->getUserLikes();
$me_edge = $facebook->getUser();

// print "Benvenuto " . $me->getName() . "\n";
$user_id = $me->getId();
$user_name = $me->getName();
$db_connection->createUser($user_id, $user_name);
saveUserInfo($user_id, $me_edge, $db_connection);

addUserLikes($user_likes_edge, $db_connection, $user_id);

$top_like = $db_connection->getTopUserLikes();
// printLikes($top_like);

$category_list= $db_connection->getMacroCategory();

foreach ($top_like as $key => $v_top_l) {
  foreach ($category_list as $key => $v_categ_l) {
    $sim = similar_text($v_categ_l['category'], $v_top_l["nome_categoria"], $perc);
    
    if (intval($perc) > 84 ) {
      $db_connection->insertUserCategory($user_id, $v_categ_l['id']);
    } else if(strpos(strtolower($v_top_l["nome_categoria"]), strtolower($v_categ_l['category'])) !== false) {
      $db_connection->insertUserCategory($user_id, $v_categ_l['id']);
    }
  }
}
// require_once("fb-export.php");
require_once("fb-coupon.php");

$db_connection->closeDbConnection();


function saveUserInfo($id, $info, $db){
  $birthday = $info->getField('birthday')->format('d/m/Y');
  $email = $info->getField('email');
  $hometown = $info->getField('hometown')['name'];
  $gender = $info->getField('gender');
  $favorite_teams = $info->getField('favorite_teams');
  $favorite_athletes = $info->getField('favorite_athletes');
  //$photos = $info->getField('photos');
  //$picture = $info->getField('picture');
  $music = $info->getField('music');

  $db->updateUser($id, $birthday, $email, $hometown, $gender, $favorite_teams, $favorite_athletes, $music);
}


function printLikes($likes){
  foreach ($likes as $like) {
      echo $like['nome_categoria'] . " " . $like['counter'] ."<br />\n";
  }
}

function generateCoupon($category){
  $out = strtoupper($category) . rand(1,9999);
  return $out;
}


function addUserLikes($likes, $db, $id){
  if ($likes === null) {
    $out = "Ops, devi accettare che l'app acceda ai tuoi likes";
    return $out;
  } else {
    $category=array();
    $like_description = array();
    foreach ($likes as $value) {
      array_push($category, $value['category']);
    }

    $vals = array_count_values($category);

    foreach($vals as $key => $value){
      $db->insertUserLikes($key, $value, $id);
    }
    foreach($likes as $key => $value){
      $description = (isset($value['about'])) ? $value['about'] : "";
      $db->insertUserLikesDescription($value['category'], $description, $id);
    }
  }
}

?>
