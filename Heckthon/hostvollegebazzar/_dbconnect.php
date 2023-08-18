<?php
$username = "id19489452_collagebazzar";
$password = "hIN7^e#JV]C0[d0F";
$server = "localhost";
$database = 'id19489452_collegebazzardb';

$conn = mysqli_connect($server, $username, $password, $database);

if (!$conn) {

    die('Error' . mysqli_connect_error());
}
