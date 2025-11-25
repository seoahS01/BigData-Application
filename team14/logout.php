<?php
session_start();

// 세션 변수 초기화
$_SESSION = [];

// 세션 쿠키 삭제
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 세션 종료
session_destroy();

// 세션 종료 후 기본 페이지로 이동
header('Location: index.php');
exit;
