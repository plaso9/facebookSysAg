<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();

isTryingToInsertValutation($db_connection);

function isTryingToInsertValutation($db_connection){
    if($_POST["coupon-valutation-value"] !== null) {
        $valutation = $_POST["coupon-valutation-value"];
        $user_id = $_POST["user-id"];
        $db_connection->insertUserValutation($valutation, $user_id);
    }
}