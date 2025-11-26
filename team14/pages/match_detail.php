<?php

// 담당자 2171054 황서아

session_start();

if (isset($_POST['color'])) {
    $_SESSION['button_color'] = $_POST['color'];
}

$button_color = $_SESSION['button_color'] ?? '#EAEAEA';

function buttonStyle($color) {
    return "background-color: $color; color: black; border: black; border: 1px solid black; cursor: pointer; padding: 10px 20px; font-size: 1em;";
}
?>

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include "../db_connect.php";

// 선택된 game_id
$selected_game = $_POST["game_id"] ?? "";

// 경기 목록 불러오기
$game_sql = "
    SELECT game_id, game_week, date_utc, venue
    FROM match_game
    ORDER BY date_utc ASC
";
$game_list = mysqli_query($conn, $game_sql);

// 클릭 후 경기 정보 불러오기
$detail = null;
$teams = [];

if (!empty($selected_game)) {

    // 1) 경기 기본 정보 + 심판
    $sql = "
        SELECT 
            mg.game_id,
            mg.game_week,
            mg.date_utc,
            mg.venue,
            r.name AS referee_name
        FROM match_game mg
        LEFT JOIN referee r ON mg.referee_id = r.referee_id
        WHERE mg.game_id = ?
        LIMIT 1
    ";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $selected_game);
    mysqli_stmt_execute($stmt);
    $detail_result = mysqli_stmt_get_result($stmt);
    $detail = mysqli_fetch_assoc($detail_result);

    // 2) 경기 양 팀 정보
    $team_sql = "
        SELECT 
            t.team_name,
            mt.score,
            mt.side
        FROM match_team mt
        JOIN team t ON mt.team_id = t.team_id
        WHERE mt.game_id = ?
        ORDER BY mt.side = 'home' DESC
    ";
    $stmt2 = mysqli_prepare($conn, $team_sql);
    mysqli_stmt_bind_param($stmt2, "i", $selected_game);
    mysqli_stmt_execute($stmt2);
    $team_result = mysqli_stmt_get_result($stmt2);

    while ($row = mysqli_fetch_assoc($team_result)) {
        $teams[] = $row;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Match Detail</title>
    <style>
        body { text-align: center; font-family: Arial; }
        table { border-collapse: collapse; margin: 20px auto; width: 60%; }
        th, td { border: 1px solid #000; padding: 10px; }
    </style>
</head>
<body>

<form action="../index.php" method="get" style="margin-top:20px;">
    <button type="submit" style="<?= buttonStyle($button_color) ?>">홈으로 가기</button>
</form>

<h1>경기 상세 정보 조회</h1>

<form method="POST">
    <label>경기 선택:</label>
    <select name="game_id">
        <option value="">-- Select Match --</option>
        <?php while ($g = mysqli_fetch_assoc($game_list)) { ?>
            <option value="<?= $g["game_id"] ?>" 
                <?= ($selected_game == $g["game_id"]) ? "selected" : "" ?>>
                <?= $g["game_id"] ?> (Week <?= $g["game_week"] ?>) - <?= $g["venue"] ?>
            </option>
        <?php } ?>
    </select>
    <button type="submit">조회</button>
</form>

<?php if (!empty($detail)) { ?>

    <h2>경기 기본 정보</h2>
    <table>
        <tr><th>경기 ID</th><td><?= $detail["game_id"] ?></td></tr>
        <tr><th>Game Week</th><td><?= $detail["game_week"] ?></td></tr>
        <tr><th>날짜</th><td><?= $detail["date_utc"] ?></td></tr>
        <tr><th>경기장</th><td><?= $detail["venue"] ?></td></tr>
        <tr><th>주심</th><td><?= $detail["referee_name"] ?></td></tr>
    </table>

    <h2>팀 & 스코어</h2>
    <table>
        <tr>
            <th>Side</th>
            <th>Team</th>
            <th>Score</th>
        </tr>
        <?php foreach ($teams as $t) { ?>
        <tr>
            <td><?= ucfirst($t["side"]) ?></td>
            <td><?= $t["team_name"] ?></td>
            <td><?= $t["score"] ?></td>
        </tr>
        <?php } ?>
    </table>

<?php } ?>

</body>
</html>
