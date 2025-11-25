<?php
// 담당자 2176122 남연정

require_once "db_config.php";
$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name, $db_port);
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8");

?>
