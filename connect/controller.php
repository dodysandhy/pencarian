<?php
// server localhost
$databaseHost = 'localhost';
// nama database
$databaseName = 'item';
// username root
$databaseUsername = 'root';
// password database
$databasePassword = ''; 
// memanggil query database
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
if(!$mysqli){
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}

?>