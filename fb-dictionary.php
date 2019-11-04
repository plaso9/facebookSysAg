<?php
include ('utils/DatabaseManager.php');
include ('utils/FacebookUtils.php');

$db_connection = new DatabaseManager();

$macroCategory = $db_connection->getMacroCategory();

if($_POST["word"]){
    insertWordInDictionary($db_connection);
}

function insertWordInDictionary($db_connection){
    $word = $_POST["word"];
    $category = $_POST["category"];
    $exist = $db_connection->wordAlreadyExist($word);
    if (empty($exist)) {
        $db_connection->addWord($word, $category);
    }
}

?>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

<!-- Just an image -->

<nav class="navbar navbar-expand-lg navbar-light discount-background">
    <a class="navbar-brand" href="fb-login.php">
        <img src="/upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="fb-stats.php">Vedi Statistiche</a>
        </li>
        </ul>
    </div>
</nav>
<div class="container" style="max-width: inherit;">
    <form method="POST">
        <div class="form-group">
            <label for="word">Word</label>
            <input type="text" class="form-control" id="word" name="word">
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <select class="form-control" id="category" name="category">
                <?php foreach ($macroCategory as $key => $value) : ?>
                <option value="<?= $value['id'] ?>"><?= $value["category"] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <button type="submit">Invia</button>
        </div>
    </form>
</div>
<!-- <footer class="footer discount-background">
    <div class="container" style="max-width: inherit;">
        <div class="row" style="padding:2%; color:white;">
            <div class="col-12">
                <p>Copyright 2019 - DGM Group</p>
            </div>
        </div>
    </div>
<footer> -->
