<?php

// 담당자 2171054 황서아

error_reporting(E_ALL);
ini_set('display_errors', 1);

include '../db_connect.php';

$ranking_data = [];
$message = "";

if (isset($_GET['submit'])) {

    // ---- 입력값 받기 ----
    $kpi = $_GET['kpi'] ?? 'Smart pass';
    $topn = intval($_GET['topn'] ?? 5);
    $min_games = intval($_GET['min_games'] ?? 1);
    $side = $_GET['side'] ?? 'all';

    // ---- 입력값 유효성 검사 ----
    if ($topn < 1 || $topn > 20) {
        $message = "⚠ Top-N은 1~20 사이의 값만 입력 가능합니다.";
    } elseif ($min_games < 1 || $min_games > 10) {
        $message = "⚠ 최소 경기 수는 1~10 사이의 값을 입력하세요.";
    } else {

        // ---- SQL 조건문 구성 ----
        $side_clause = "";
        $params = [$kpi];
        $types = "s";

        if ($side !== 'all') {
            $side_clause = " AND mt.side = ? ";
            $params[] = $side;
            $types .= "s";
        }

        // ---- KPI 집계 SQL ----
        $sql = "
            SELECT
                c.coach_id,
                c.name AS coach_name,
                COUNT(me.event_id) AS kpi_count,
                COUNT(DISTINCT mt.game_id) AS game_count,
                DENSE_RANK() OVER (ORDER BY COUNT(me.event_id) DESC) AS ranking
            FROM coach c
            JOIN match_team mt
                ON c.coach_id = mt.coach_id
            LEFT JOIN match_event me
                ON me.game_id = mt.game_id
                AND me.team_id = mt.team_id
                AND me.event_name = ?
            WHERE 1=1
            $side_clause
            GROUP BY c.coach_id, c.name
            HAVING game_count >= ?
            ORDER BY kpi_count DESC;
        ";

        $params[] = $min_games;
        $types .= "i";

        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, $types, ...$params);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        // ---- Top-N 필터링 ----
        while ($row = mysqli_fetch_assoc($result)) {
            if ($row['ranking'] <= $topn) {
                $ranking_data[] = $row;
            }
        }

        // ---- 결과 없음 처리 ----
        if (empty($ranking_data)) {
            $message = "⚠ 조건에 맞는 결과가 없습니다. (예: KPI가 없거나 최소 경기 수가 너무 높습니다)";
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>감독 KPI Top-N 랭킹</title>
    <style>
        body {
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: Arial;
        }
        table {
            border-collapse: collapse;
            width: 70%;
            margin-top: 30px;
        }
        th, td {
            border: 1px solid #555;
            padding: 8px;
            text-align: center;
        }
        .msg {
            margin-top: 20px;
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<form action="../index.php" method="get" style="margin-top:20px;">
    <button type="submit">홈으로 가기</button>
</form>

<h1>감독 Top-N 전술 KPI 랭킹</h1>

<form method="get" action="./ranking.php">
    <label>KPI(event_name):</label>
    <select name="kpi" required>
        <option value="Smart pass">Smart pass</option>
        <option value="Launch">Launch</option>
    </select>
    <br><br>

    <label>Top-N (1~20):</label>
    <input type="number" name="topn" min="1" max="20" required>
    <br><br>

    <label>최소 경기 수 (1~10):</label>
    <input type="number" name="min_games" min="1" max="10" value="1">
    <br><br>

    <label>홈/원정:</label>
    <select name="side">
        <option value="all">전체</option>
        <option value="home">홈</option>
        <option value="away">원정</option>
    </select>
    <br><br>

    <button type="submit" name="submit">랭킹 조회</button>
</form>

<?php if ($message): ?>
    <div class="msg"><?= $message ?></div>
<?php endif; ?>

<?php if (!empty($ranking_data)): ?>
<table>
    <thead>
        <tr>
            <th>순위</th>
            <th>감독명</th>
            <th>KPI 점수</th>
            <th>참여 경기 수</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($ranking_data as $row): ?>
        <tr>
            <td><?= $row['ranking'] ?></td>
            <td><?= htmlspecialchars($row['coach_name']) ?></td>
            <td><?= $row['kpi_count'] ?></td>
            <td><?= $row['game_count'] ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php endif; ?>

</body>
</html>

<?php mysqli_close($conn); ?>
