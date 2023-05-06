<?php
define('Server', 'Localhost');
define('Password', '12345');
define('Username', 'wordpress');
define('DatabaseName', 'tmola');

//connect to DB
global $conn;
static $conn;
$conn = mysqli_connect(Server, Username, Password, DatabaseName);

//check for the connection 
if (!$conn) {
    echo "DatabeError";
}
?>