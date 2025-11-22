<?php
// 설정 파일 불러오기
require_once "db_config.php";

// MySQLi 연결 생성
$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name, $db_port);

// 연결 실패 시 에러 출력
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}

// UTF-8 설정 (한국어 데이터 사용 대비)
mysqli_set_charset($conn, "utf8");

?>