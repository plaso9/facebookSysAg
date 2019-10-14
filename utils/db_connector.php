<?php

class DatabaseConnection{
  static $_DB_HOST = "localhost";
  static $_DB_USER = "root";
  static $_DB_PASSWORD = "";
  static $_DB_NAME = "sistemiagenti_db";
  private static $_CONNECTION;

  function __construct() {
    self::connect();
  }

  static function connect() {
    try {
      self::$_CONNECTION = new PDO("mysql:host=" . self::$_DB_HOST . ";dbname=" . self::$_DB_NAME, self::$_DB_USER, self::$_DB_PASSWORD);
      self::$_CONNECTION->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
      }
    }

  function query($sql){
    try {
      self::$_CONNECTION->exec($sql);
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
  }

  function insert($sql){
    try {
      self::$_CONNECTION->exec($sql);
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
  }

  function select($sql){
    try {
      $stmt = self::$_CONNECTION->prepare($sql);
      $stmt->execute();
      $result = $stmt->fetchAll();
    } catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
    return $result;
  }

  function closeConnection(){
    self::$_CONNECTION = null;
  }
}

?>
