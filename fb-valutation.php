<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();

function isTryingToInsertValutation($db_connection){
    if($_POST["coupon-valutation-value"] !== null) {
        $valutation = $_POST["coupon-valutation-value"];
        $user_id = $_POST["user-id"];
        $category = $_POST["coupon-category-id"];
        $db_connection->insertUserValutation($valutation, $user_id, $category);
    }
}

function isTryingToInsertValutationFromModal($db_connection){
    if($_POST["modal-coupon-valutation-value"] !== null) {
        $valutation = $_POST["modal-coupon-valutation-value"];
        $category = $_POST["modal-coupon-valutation-category"];
        $user_id = $_POST["user-id"];
        $db_connection->insertUserValutationFromModal($valutation, $user_id, $category);
    }
}

isTryingToInsertValutation($db_connection);
isTryingToInsertValutationFromModal($db_connection);