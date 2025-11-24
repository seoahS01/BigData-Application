<?php

// 담당자 2171054 황서아

error_reporting(E_ALL);
ini_set('display_errors', 1);

include '../db_connect.php';

// 감독 목록
$coach_sql = "SELECT coach_id, name FROM coach ORDER BY name";
$coach_result = mysqli_query($conn, $coach_sql);

$selected_coach = $_POST['coach_id'] ?? '';

$coach_info = null;
$wins = 0;
$draws = 0;
$losses = 0;
$total_games = 0;
$win_rate = 0;
$game_rows = [];

if (!empty($selected_coach)) {

    // 1) 감독 정보
    $info_sql = "
        SELECT c.coach_id, c.name, c.birth_date, t.team_name
        FROM coach c
        JOIN team t ON c.team_id = t.team_id
        WHERE c.coach_id = ?
    ";
    $stmt = mysqli_prepare($conn, $info_sql);
    mysqli_stmt_bind_param($stmt, "i", $selected_coach);
    mysqli_stmt_execute($stmt);
    $coach_info = mysqli_stmt_get_result($stmt)->fetch_assoc();

    // 2) 승/무/패 계산
    $result_sql = "
        SELECT 
            SUM(
                CASE 
                    WHEN mt.score > opp.score THEN 1
                    ELSE 0
                END
            ) AS wins,
            SUM(
                CASE
                    WHEN mt.score = opp.score THEN 1
                    ELSE 0
                END
            ) AS draws,
            SUM(
                CASE
                    WHEN mt.score < opp.score THEN 1
                    ELSE 0
                END
            ) AS losses,
            COUNT(*) AS total_games
        FROM match_team mt
        JOIN match_team opp 
            ON mt.game_id = opp.game_id 
            AND mt.team_id != opp.team_id
        WHERE mt.coach_id = ?
    ";

    $stmt2 = mysqli_prepare($conn, $result_sql);
    mysqli_stmt_bind_param($stmt2, "i", $selected_coach);
    mysqli_stmt_execute($stmt2);
    $result = mysqli_stmt_get_result($stmt2)->fetch_assoc();

    $wins = $result['wins'];
    $draws = $result['draws'];
    $losses = $result['losses'];
    $total_games = $result['total_games'];
    $win_rate = $total_games > 0 ? round(($wins / $total_games) * 100, 2) : 0;

    // 3) 경기 상세 기록
    $game_sql = "
        SELECT 
            mg.game_id,
            mg.game_week,
            mg.date_utc,
            mg.venue,
            mt.team_id,
            t.team_name,
            mt.side,
            mt.score
        FROM match_team mt
        JOIN match_game mg ON mt.game_id = mg.game_id
        JOIN team t ON mt.team_id = t.team_id
        WHERE mt.coach_id = ?
        ORDER BY mg.game_week ASC
    ";

    $stmt3 = mysqli_prepare($conn, $game_sql);
    mysqli_stmt_bind_param($stmt3, "i", $selected_coach);
    mysqli_stmt_execute($stmt3);
    $game_rows = mysqli_stmt_get_result($stmt3);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>감독 전술 지문 보드</title>
    <style>
        body { text-align: center; font-family: Arial; }
        table { margin: 20px auto; width: 80%; border-collapse: collapse; }
        th, td { padding: 12px; border: 1px solid black; font-size: 16px; }
        th { background-color: #ffffff; font-weight: bold; }
        .container { margin-top: 30px; }
    </style>
</head>

<body>

<form action="../index.php" method="get" style="margin-top:20px;">
    <button type="submit">홈으로 가기</button>
</form>

<h1>감독 상세보기</h1>

<form method="POST">
    <label>감독 선택:</label>
    <select name="coach_id">
        <option value="">-- 선택 --</option>
        <?php while ($c = mysqli_fetch_assoc($coach_result)) { ?>
            <option value="<?= $c['coach_id'] ?>" <?= $selected_coach == $c['coach_id'] ? 'selected' : '' ?>>
                <?= $c['name'] ?>
            </option>
        <?php } ?>
    </select>
    <button type="submit">조회</button>
</form>

<div class="container">

<?php if ($coach_info) { ?>

    <h2>감독 정보</h2>
    <p><strong>이름:</strong> <?= $coach_info['name'] ?></p>
    <p><strong>팀:</strong> <?= $coach_info['team_name'] ?></p>
    <p><strong>생년월일:</strong> <?= $coach_info['birth_date'] ?></p>

    <h2>성적 요약</h2>
    <p><strong>총 경기수:</strong> <?= $total_games ?> 경기</p>
    <p><strong>승리:</strong> <?= $wins ?> 경기</p>
    <p><strong>무승부:</strong> <?= $draws ?> 경기</p>
    <p><strong>패배:</strong> <?= $losses ?> 경기</p>
    <p><strong>승률:</strong> <?= $win_rate ?>%</p>

    <h2>경기 상세 기록</h2>

    <table>
        <tr>
            <th>Game Week</th>
            <th>날짜</th>
            <th>장소</th>
            <th>팀명</th>
            <th>Home/Away</th>
            <th>득점</th>
        </tr>

        <?php while ($g = mysqli_fetch_assoc($game_rows)) { ?>
            <tr>
                <td><?= $g['game_week'] ?></td>
                <td><?= $g['date_utc'] ?></td>
                <td><?= $g['venue'] ?></td>
                <td><?= $g['team_name'] ?></td>
                <td><?= strtoupper($g['side']) ?></td>
                <td><?= $g['score'] ?></td>
            </tr>
        <?php } ?>
    </table>

<?php } ?>

<?php if (empty($selected_coach)) { ?>
    <p style="color: gray; margin-top: 30px;">감독을 선택하면 상세 정보가 표시됩니다.</p>
<?php } ?>

</div>

</body>
</html>
