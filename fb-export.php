<?php
$testo = "User : $me; Category range like\n";
$testo .= "20-10 likes; 9-5 likes; 4-2 likes; 1 like\n";

$firstRange = array();
$secondRange = array();
$thirdRange = array();
$fourthRange = array();

$firstTxt = "";
$secondTxt = "";
$thirdTxt = "";
$fourthTxt = "";


foreach ($vals as $key => $value) {
    if($value <= 20 && $value >= 10) {
        array_push($firstRange, $key);
    }
    if($value <= 9 && $value >= 5) {
        array_push($secondRange, $key);
    }
    if($value <= 4 && $value >= 2) {
        array_push($thirdRange, $key);
    }
    if($value == 1) {
        array_push($fourthRange, $key);
    }
}

foreach ($firstRange as $key => $value) {
    $firstTxt .= $value;
    if (next($firstRange)) $firstTxt .= " - ";
}
foreach ($secondRange as $key => $value) {
    $secondTxt .= $value;
    if (next($secondRange)) $secondTxt .= " - ";
}
foreach ($thirdRange as $key => $value) {
    $thirdTxt .= $value;
    if (next($thirdRange)) $thirdTxt .= " - ";
}
foreach ($fourthRange as $key => $value) {
    $fourthTxt .= $value;
    if (next($fourthRange)) $fourthTxt .= " - ";
}

$testo .= "$firstTxt;$secondTxt;$thirdTxt;$fourthTxt";
$my_file = 'likes' . '_' . $me->getName() . '.csv';
$handle = fopen($my_file, 'a') or die('Cannot open file:  ' . $my_file);
fwrite($handle, $testo);

?>
