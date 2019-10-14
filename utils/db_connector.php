<?php

class DatabaseConnection{
  static $dbhost = "localhost";
  static $dbuser = "root";
  static $dbpass = "";
  static $db = "sistemiagenti_db";
  private static $connection;

  function __construct() {
    self::connect();
  }
  
  static function connect() {
    try {
      self::$connection = new PDO("mysql:host=" . self::$dbhost . ";dbname=" . self::$db, self::$dbuser, self::$dbpass);
      self::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
      }
    }

  function query($sql){
    try {
      self::$connection->exec($sql);
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
  }

  function insert($sql){
    try {
      self::$connection->exec($sql);
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
  }

  function select($sql){
    try {
      $stmt = self::$connection->prepare($sql);
      $stmt->execute();
      $result = $stmt->fetchAll();
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
    return $result;
  }

  function closeConnection(){
    self::$connection = null;
  }
}

?>
