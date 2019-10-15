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
    self::$_DB_CONNECTION->insert("INSERT INTO user(id_user, nome) VALUES ($id, '$name')");
  }

  function insertUserLikes($name, $counter, $id){
    self::$_DB_CONNECTION->insert("INSERT INTO likes(nome_categoria, counter, user_id) VALUES ('$name', $counter, $id)");
  }

  function getTopUserLikes(){
    return self::$_DB_CONNECTION->select("SELECT nome_categoria, counter, user_id FROM likes ORDER BY counter DESC LIMIT 5");
  }

  function updateUser($id, $birthday, $email, $hometown, $gender, $favorite_teams, $favorite_athletes, $music){
    self::$_DB_CONNECTION->update("UPDATE user SET email='$email', birthday='$birthday', hometown='$hometown', gender='$gender' WHERE id_user=$id");
    foreach ($favorite_teams as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO football_team(name, user_id) VALUES ('$name', $id)");
    }
    foreach ($favorite_athletes as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO favorite_athletes(name, user_id) VALUES ('$name', $id)");
    }
    foreach ($music as $key => $value) {
      $name = $value['name'];
      self::$_DB_CONNECTION->insert("INSERT INTO music(name, user_id) VALUES ('$name', $id)");
    }
  }

  function closeDbConnection(){
    self::$_DB_CONNECTION->closeConnection();
  }

}

?>
