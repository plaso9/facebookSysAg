<?php

require_once __DIR__ . '/../vendor/autoload.php';

class FacebookManager{
  private static $_FACEBOOK;
  private static $_ACCESS_TOKEN;

  function __construct() {
    self::createFacebookInstance();
  }

  static function createFacebookInstance() {
    if(!session_id()) {
        session_start();
    }
    self::$_FACEBOOK = new Facebook\Facebook([
      'app_id' => '1106389556223583',
      'app_secret' => '0a8d71af37372994b389beaa42692619',
      'default_graph_version' => 'v2.10',
    ]);

    $helper = self::$_FACEBOOK->getRedirectLoginHelper();

    try {
      self::$_ACCESS_TOKEN = $helper->getAccessToken();
    } catch(Facebook\Exceptions\FacebookResponseException $e) {
      echo 'Graph returned an error: ' . $e->getMessage();
      exit;
    } catch(Facebook\Exceptions\FacebookSDKException $e) {
      echo 'Facebook SDK returned an error: ' . $e->getMessage();
      exit;
    }

    if (! isset(self::$_ACCESS_TOKEN)) {
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
    // User logged in
    $_SESSION['fb_access_token'] = (string) self::getAccessToken();
  }

  function getAccessToken(){
    return self::$_ACCESS_TOKEN;
  }

  //<---------------------   QUERY -------------------------->
  //Ritorna GraphUser object con le informazioni sull'utente
  function getUserInfo(){
    try {
      $response = self::$_FACEBOOK->get('/me', self::getAccessToken());
    } catch(\Facebook\Exceptions\FacebookResponseException $e) {
      echo 'Graph returned an error: ' . $e->getMessage();
      exit;
    } catch(\Facebook\Exceptions\FacebookSDKException $e) {
      echo 'Facebook SDK returned an error: ' . $e->getMessage();
      exit;
    }
    return $response->getGraphUser();
  }

  //Ritorna GraphEdge object con i like alle pagine dell'utente
  function getUserLikes(){
    try {
      $response = self::$_FACEBOOK->get('/me/likes?fields=category,description,about&limit=100', self::getAccessToken());
    } catch(FacebookExceptionsFacebookResponseException $e) {
      echo 'Graph returned an error: ' . $e->getMessage();
      exit;
    } catch(FacebookExceptionsFacebookSDKException $e) {
      echo 'Facebook SDK returned an error: ' . $e->getMessage();
      exit;
    }

    return $response->getGraphEdge();
  }

  //Ritorna le informazioni dell'utente loggato
  function getUser(){
    try {
      $response = self::$_FACEBOOK->get('/me/?fields=birthday,email,hometown,gender,favorite_teams,favorite_athletes,photos,picture,music', self::getAccessToken());
    } catch(FacebookExceptionsFacebookResponseException $e) {
      echo 'Graph returned an error: ' . $e->getMessage();
      exit;
    } catch(FacebookExceptionsFacebookSDKException $e) {
      echo 'Facebook SDK returned an error: ' . $e->getMessage();
      exit;
    }

    return $response->getGraphNode();
  }


}

?>
