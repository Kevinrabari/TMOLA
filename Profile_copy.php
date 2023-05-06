<?php 
require("DBcont.php");  
session_start();
$userId = $_SESSION['userId'];
echo $userId;
?>