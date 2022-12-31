<?php 
$servername = "mariadb";
$username = "cs332f12";
$password = "TGvW64Py";
$dbname = "cs332f12";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die('Connection failed: ' . mysql_error());
}else{
    
}
?>