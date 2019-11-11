<?php

include ('db_connector.php');

class DatabaseManager{
  private static $_DB_CONNECTION;

  function __construct() {
    self::createDbInstance();
  }

  static function createDbInstance() {
    self::$_DB_CONNECTION = new DatabaseConnection();
  }

  function createUser($id, $name){
    self::$_DB_CONNECTION->insert("INSERT INTO user(id_user, nome) VALUES ('$id', '$name')");
  }

  function insertUserLikes($name, $counter, $id){
    self::$_DB_CONNECTION->insert("INSERT INTO likes(nome_categoria, counter, user_id) VALUES ('$name', $counter, '$id')");
  }

  function insertUserLikesDescription($name, $description, $date, $id){
    self::$_DB_CONNECTION->insert("INSERT INTO likes_description(nome_categoria, description, like_date, user_id) VALUES ('$name', '$description', '$date', '$id')");
  }

  function addWord($word, $category_id){
    self::$_DB_CONNECTION->insert("INSERT INTO dictionary(_category, word) VALUES ($category_id, '$word')");
  }

  function wordAlreadyExist($word){
    return self::$_DB_CONNECTION->select("SELECT word FROM dictionary WHERE word = '$word'");
  }

  function getCategoryFromWord($word){
    return self::$_DB_CONNECTION->select("SELECT c.category FROM category as c, dictionary d WHERE d.word = '$word' AND c.id = d._category");
  }

  function getAllUserLikes($user_id){
    return self::$_DB_CONNECTION->select("SELECT nome_categoria, description FROM likes_description WHERE user_id = '$user_id'");
  }

  function getCategoryOfWordInDictionary($word){
    return self::$_DB_CONNECTION->select("SELECT _category, word FROM dictionary WHERE word = '$word'");
  }

  function getDictionary() {
    return self::$_DB_CONNECTION->select("SELECT _category, word FROM dictionary");
  }

  function getTopUserLikes($user_id){
    return self::$_DB_CONNECTION->select("SELECT nome_categoria, counter, user_id FROM likes WHERE user_id = '$user_id' ORDER BY counter DESC");
  }

  function getMacroCategory(){
    return self::$_DB_CONNECTION->select("SELECT id, category, coupon_message  FROM category");
  }

  function getFavoriteCategory($user_id){
    return self::$_DB_CONNECTION->select("SELECT COUNT(uc.id), SUM(uc.point) as total_point, c.category, c.id, c.coupon_message
    FROM user_category uc, category c
    WHERE c.id = uc._category AND _user = $user_id
    GROUP BY _category
    ORDER BY total_point DESC
    LIMIT 2");
  }

  function getLastFavoriteCategory($user_id){
    return self::$_DB_CONNECTION->select("SELECT COUNT(uc.id), SUM(uc.point) as total_point, c.category, c.id, c.coupon_message
    FROM user_category uc, category c
    WHERE c.id = uc._category AND _user = $user_id
    GROUP BY _category
    ORDER BY total_point
    LIMIT 8");
  }

  function countPagesAnalyzed($user_id){
    return self::$_DB_CONNECTION->select("SELECT COUNT(id) as tot FROM user_category WHERE _user = $user_id");
  }

  function insertUserCategory($user_id, $category_id, $point){
    self::$_DB_CONNECTION->insert("INSERT INTO user_category (_user, _category, point) VALUES ($user_id, $category_id, $point)");
  }

  function insertUserValutation($valutation, $user_id, $category){
    self::$_DB_CONNECTION->insert("INSERT INTO valutation(_user, valutation, _category, _coupon) VALUES ('$user_id', '$valutation', '$category', 1)");
  }

  function insertUserValutationFromModal($valutation, $user_id, $category){
    self::$_DB_CONNECTION->insert("INSERT INTO valutation(_user, valutation, _category) VALUES ('$user_id', '$valutation', '$category')");
  }

  function getTopUserCategory($user_id){
    return self::$_DB_CONNECTION->select("SELECT c.id,c.category, uc._category, c.coupon_message, COUNT(c.id) as tot
      FROM category c, user_category uc
      WHERE c.id = uc._category AND uc._user = '$user_id'
      GROUP BY uc._category
      ORDER BY tot DESC
      LIMIT 2");
  }

  function updateUser($id, $birthday, $email, $hometown, $gender, $favorite_teams, $favorite_athletes, $music){
    self::$_DB_CONNECTION->update("UPDATE user SET email='$email', birthday='$birthday', hometown='$hometown', gender='$gender' WHERE id_user='$id'");
    foreach ($favorite_teams as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO football_team(name, user_id) VALUES ('$name', '$id')");
    }
    foreach ($favorite_athletes as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO favorite_athletes(name, user_id) VALUES ('$name', '$id')");
    }
    foreach ($music as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO music(name, user_id) VALUES ('$name', '$id')");
    }
  }

  function countAnswer(){
    return self::$_DB_CONNECTION->select("SELECT valutation, count(id) FROM valutation WHERE _coupon=1 GROUP BY valutation ORDER BY valutation");
  }

  function getAnswers(){
    return self::$_DB_CONNECTION->select("SELECT user.nome, valutation.valutation FROM valutation INNER JOIN user ON valutation._user=user.id_user WHERE valutation._coupon=1 ORDER BY user.nome");
  }

  // function countAnswer(){
  //   return self::$_DB_CONNECTION->select("SELECT valutation, count(id) FROM valutation GROUP BY valutation ORDER BY valutation");
  // }
  //
  // function getAnswers(){
  //   return self::$_DB_CONNECTION->select("SELECT user.nome, valutation.valutation FROM valutation INNER JOIN user ON valutation._user=user.id_user ORDER BY user.nome");
  // }


  function closeDbConnection(){
    self::$_DB_CONNECTION->closeConnection();
  }

}

?>
