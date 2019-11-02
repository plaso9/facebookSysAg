<?php ini_set('display_errors', 0); ?>

<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();
$facebook = new FacebookManager();

$me = $facebook->getUserInfo();
$user_likes_edge = $facebook->getUserLikes();
$user_likes = array();

while(isset($user_likes_edge)) {
  array_push($user_likes, $user_likes_edge);
  $user_likes_edge = $facebook->getFacebookInstance()->next($user_likes_edge);
}

$me_edge = $facebook->getUser();

$user_id = $me->getId();
$user_name = $me->getName();
$db_connection->createUser($user_id, $user_name);
saveUserInfo($user_id, $me_edge, $db_connection);

addUserLikes($user_likes, $db_connection, $user_id);

//____________________________________________________________________________________________________________________
// $top_like = $db_connection->getTopUserLikes($user_id);
// $category_list= $db_connection->getMacroCategory();

// $coupon = array();
// $i = 0;

// foreach ($top_like as $key => $v_top_l) {
//   foreach ($category_list as $key => $v_categ_l) {
//     $sim = similar_text($v_categ_l['category'], $v_top_l["nome_categoria"], $perc);
//     if (intval($perc) > 84 ) {
//       $db_connection->insertUserCategory($user_id, $v_categ_l['id']);
//     } else if(strpos(strtolower($v_top_l["nome_categoria"]), strtolower($v_categ_l['category'])) !== false) {
//       $db_connection->insertUserCategory($user_id, $v_categ_l['id']);
//     } else {
//       var_dump("LIKE : ");
//       var_dump($v_top_l);
//       // var_dump("CATEGORY : ");
//       // var_dump($v_categ_l);
//     }
//   }
// }

$all_like = $db_connection->getAllUserLikes($user_id);
$category_list= $db_connection->getMacroCategory();

$coupon = array();
$i = 0;
$testo = "";

$like = array();
$like_checked = array();
foreach ($all_like as $key => $v_all_like) {
  array_push($like,$v_all_like["description"]);
  $categoryArr = $db_connection->getCategoryOfWordInDictionary($v_all_like["nome_categoria"]);
  foreach ($category_list as $key => $v_category) {
    $sim = similar_text($v_category['category'], $v_all_like["nome_categoria"], $perc);
    if (intval($perc) > 84 ) {
      array_push($like_checked,$v_all_like["description"]);
      $point = "1";
      // $testo .= $v_category["category"] . " similar 84% " . $v_all_like["nome_categoria"] . " => " . $v_all_like["description"] . "\n";
      $db_connection->insertUserCategory($user_id, $v_category['id'], $point);
    } else if (strpos(strtolower($v_all_like["nome_categoria"]), strtolower($v_category['category'])) !== false) {
      array_push($like_checked,$v_all_like["description"]);
      $point = "0.9";
      // $testo .= $v_category["category"] . " strpos " . $v_all_like["nome_categoria"] . " => " . $v_all_like["description"] . "\n";
      $db_connection->insertUserCategory($user_id, $v_category['id'], $point);
    } else if (!empty($categoryArr) && strtolower($categoryArr[0]["_category"]) == strtolower($v_category["id"])) {
      array_push($like_checked,$v_all_like["description"]);
      $point = "0.9";
      // $testo .= $categoryArr[0]["word"] . " == " . $v_category["category"] . "\n";
      $db_connection->insertUserCategory($user_id, $v_category['id'], $point);
    }
  }
}

$arrayDiff = array_diff($like, $like_checked);
$dictionary = $db_connection->getDictionary();
foreach ($arrayDiff as $key => $value) {
  foreach ($dictionary as $key => $v_dictionary) {
    if (strpos(strtolower($value), strtolower($v_dictionary['word'])) !== false) {
      $point = "0.7";
      $db_connection->insertUserCategory($user_id, $v_dictionary['_category'], $point);
      // $testo .= $value . "\n";
    }
  }
}


// $coupon = $db_connection->getTopUserCategory($user_id);
// $my_file = 'likes' . '_' . $me->getName() . time() . '.csv';
// $handle = fopen($my_file, 'a') or die('Cannot open file:  ' . $my_file);
// fwrite($handle, $testo);
// $coupon = $db_connection->getTopUserCategory($user_id);
$coupon = $db_connection->getFavoriteCategory($user_id);
$lastcategory = $db_connection->getLastFavoriteCategory($user_id);
$page_analyzed_arr = $db_connection->countPagesAnalyzed($user_id);
foreach ($page_analyzed_arr as $key => $value) {
  $page_analyzed = $value["tot"];
}
//____________________________________________________________________________________________________________________
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

function saveUserAnswers($id, $answer, $name, $db){
  $db->addUserAnswer($answer, $name, $id);
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
    foreach ($likes as $page) {
      foreach ($page as $value) {
        array_push($category, $value['category']);
      }

      $vals = array_count_values($category);

      foreach($vals as $key => $value){

        $db->insertUserLikes($key, $value, $id);
      }
      foreach($page as $key => $value){
        $description = (isset($value['about'])) ? $value['about'] : "";
        $date = date_format($value['created_time'], 'Y-m-d');
        if(!isset($date)){
          $date = "";
        }
        $db->insertUserLikesDescription($value['category'], $description, $date, $id);
      }
    }
  }
}

?>
