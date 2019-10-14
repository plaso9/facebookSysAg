<?php
$testo = "";

foreach ($category as $key => $value) {
    $testo = $value . ";";
    $my_file = 'likes.csv';
    $handle = fopen($my_file, 'a') or die('Cannot open file:  ' . $my_file);
    fwrite($handle, $testo);
    $testo = "";
}
?>