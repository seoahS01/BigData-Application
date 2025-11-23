<?php
include '../db_connect.php';

// 전술 데이터가 있는 감독만 조회
$coach_list = [];
$coach_sql = "
    SELECT DISTINCT c.coach_id, c.name
    FROM coach c
    JOIN match_team mt ON c.coach_id = mt.coach_id
    JOIN action_log a ON mt.team_id = a.team_id AND mt.game_id = a.game_id
    ORDER BY c.name
";
$coach_result = mysqli_query($conn, $coach_sql);
if ($coach_result) {
    while ($row = mysqli_fetch_assoc($coach_result)) {
        $coach_list[] = $row;
    }
}

$coach_filter = isset($_GET['coach']) ? $_GET['coach'] : '';
$result = null;
$params = [];
$param_types = '';

$where_clause = '';
if ($coach_filter !== '' && $coach_filter !== 'all') {
    $where_clause = "WHERE c.coach_id = ?";
    $params[] = $coach_filter;
    $param_types = 'i';
}

$sql = "
    SELECT 
        c.name AS coach_name,
        a.type_name,
        COUNT(*) AS total_count,
        SUM(CASE WHEN a.result_name = 'success' THEN 1 ELSE 0 END) AS success_count,
        ROUND(SUM(CASE WHEN a.result_name = 'success' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS success_rate_percent
    FROM coach c
    JOIN match_team mt ON c.coach_id = mt.coach_id
    JOIN action_log a ON mt.team_id = a.team_id AND mt.game_id = a.game_id
    $where_clause
    GROUP BY c.coach_id, a.type_name
    ORDER BY c.name, a.type_name
";

if ($stmt = mysqli_prepare($conn, $sql)) {
    if ($where_clause !== '') {
        mysqli_stmt_bind_param($stmt, $param_types, ...$params);
    }
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
} else {
    die('쿼리 오류: ' . mysqli_error($conn));
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>감독별 전술 성공률 보기</title>
    <style>
    body {
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }


    table {
        border-collapse: collapse;
        width: 50%;
        table-layout: fixed;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: center;
        word-wrap: break-word;
    }
    </style>
</head>
<body>

<form action="../index.php" method="get" style="margin-bottom: 20px;">
    <button type="submit">홈으로 가기</button>
</form>

<h1>감독별 전술 성공률</h1>

<form method="get" action="">
    <label for="coach">감독 선택: </label>
    <select id="coach" name="coach" required>
        <option value="" <?= $coach_filter == '' ? 'selected' : '' ?>>-- 선택하세요 --</option>
        <option value="all" <?= $coach_filter == 'all' ? 'selected' : '' ?>>전체 보기</option>
        <?php foreach ($coach_list as $coach): ?>
            <option value="<?= $coach['coach_id'] ?>" <?= $coach_filter == $coach['coach_id'] ? 'selected' : '' ?>>
                <?= htmlspecialchars($coach['name']) ?>
            </option>
        <?php endforeach; ?>
    </select>
    <button type="submit">필터 적용</button>
</form>

<?php
// 한글명 매핑 배열
$name_map = [
    'interception' => '인터셉트',
    'dribble' => '드리블',
    'shot' => '슛',
];
?>

<?php if ($coach_filter !== ''): ?>
    <table>
        <thead>
            <tr>
                <th>감독명</th>
                <th>전술</th>
                <th>총 시도</th>
                <th>성공 횟수</th>
                <th>성공률 (%)</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($result && mysqli_num_rows($result) > 0): ?>
                <?php while ($row = mysqli_fetch_assoc($result)): ?>
                <tr>
                    <td><?= htmlspecialchars($row['coach_name']) ?></td>
                    <td><?= htmlspecialchars($name_map[$row['type_name']] ?? $row['type_name']) ?></td>
                    <td><?= $row['total_count'] ?></td>
                    <td><?= $row['success_count'] ?></td>
                    <td><?= $row['success_rate_percent'] ?></td>
                </tr>
                <?php endwhile; ?>
            <?php else: ?>
                <tr><td colspan="5" style="text-align:center">조건에 맞는 데이터가 없습니다.</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
<?php endif; ?>

</body>
</html>

<?php
mysqli_close($conn);
?>
