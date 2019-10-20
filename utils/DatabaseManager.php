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

  function insertUserLikesDescription($name, $description, $id){
    self::$_DB_CONNECTION->insert("INSERT INTO likes_description(nome_categoria, description, user_id) VALUES ('$name', '$description', '$id')");
  }

  function getTopUserLikes($user_id){
    return self::$_DB_CONNECTION->select("SELECT nome_categoria, counter, user_id FROM likes WHERE user_id = '$user_id' ORDER BY counter DESC");
  }

  function getMacroCategory(){
    return self::$_DB_CONNECTION->select("SELECT id, category, coupon_message  FROM category");
  }

  function insertUserCategory($user_id, $category_id){
    self::$_DB_CONNECTION->insert("INSERT INTO user_category (_user, _category) VALUES ($user_id, $category_id)");
  }

  function insertUserValutation($valutation, $user_id){
    self::$_DB_CONNECTION->insert("INSERT INTO valutation(_user, valutation) VALUES ('$user_id', '$valutation')");
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
    return self::$_DB_CONNECTION->select("SELECT valutation, count(id) FROM valutation GROUP BY valutation ORDER BY valutation");
  }

  function getAnswers(){
    return self::$_DB_CONNECTION->select("SELECT _user, valutation FROM valutation ORDER BY _user");
  }

  function closeDbConnection(){
    self::$_DB_CONNECTION->closeConnection();
  }

}

?>
