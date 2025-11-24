<?php
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
include '../db_connect.php';
// 담당자 2176122 남연정

// drilldown 데이터 반환
if (isset($_GET['ajax']) && $_GET['ajax'] == '1') {
    $coach_name = $_GET['coach_name'] ?? '';
    $type_name = $_GET['type_name'] ?? '';
    $sql = "
        SELECT al.player_id, al.time_seconds, p.name AS player_name
        FROM action_log al
        JOIN match_team mt ON al.team_id = mt.team_id AND al.game_id = mt.game_id
        JOIN coach c ON mt.coach_id = c.coach_id
        JOIN player p ON al.player_id = p.player_id
        WHERE c.name = ? AND al.type_name = ?
        ORDER BY al.time_seconds
    ";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, 'ss', $coach_name, $type_name);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    // 드릴다운 테이블을 스크롤 가능 영역으로 
    echo '<div style="max-height:300px; overflow-y:auto; border:1px solid #ccc; margin-top:10px;">';
    echo '<table style="width:100%; border-collapse: collapse;">';
    echo '<thead><tr><th>선수 이름</th><th>시간</th></tr></thead><tbody>';
    while ($row = mysqli_fetch_assoc($result)) {
        $minutes = floor($row['time_seconds'] / 60);
        $seconds = $row['time_seconds'] % 60;
        $pretty_time = sprintf('%d:%02d', $minutes, $seconds);
        echo '<tr>
            <td>' . htmlspecialchars($row['player_name']) . '</td>
            <td>' . $pretty_time . '</td>
        </tr>';
    }
    echo '</tbody></table></div>';
    mysqli_close($conn);
    exit;
}

// 롤업 집계 테이블
$coach_list = [];
$coach_sql = "
    SELECT DISTINCT c.coach_id, c.name
    FROM coach c
    JOIN match_team mt ON c.coach_id = mt.coach_id
    JOIN action_log al ON mt.team_id = al.team_id AND mt.game_id = al.game_id
    ORDER BY c.name
";
$coach_result = mysqli_query($conn, $coach_sql);
if ($coach_result) {
    while ($row = mysqli_fetch_assoc($coach_result)) {
        $coach_list[] = $row;
    }
}

$coach_filter = $_GET['coach'] ?? '';
$where_clause = '';
$params = [];
$param_types = '';

if ($coach_filter !== '' && $coach_filter !== 'all') {
    $where_clause = "WHERE c.coach_id = ?";
    $params[] = $coach_filter;
    $param_types = 'i';
}

$sql = "
    SELECT 
        c.name AS coach_name,
        al.type_name,
        COUNT(*) AS action_count
    FROM match_team mt
    JOIN coach c ON mt.coach_id = c.coach_id
    JOIN action_log al ON mt.game_id = al.game_id AND mt.team_id = al.team_id
    $where_clause
    GROUP BY c.name, al.type_name WITH ROLLUP
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
    <title>감독별 전술 분석 리포트</title>
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
        }
        .subtotal-row {
            font-weight: bold;
            background-color: #f9f9f9;
        }
        .total-row {
            font-weight: bold;
            background-color: #eee;
        }
    </style>
    <script>
    function showDrilldown(coach_name, type_name, btn) {
        let tr = btn.closest('tr');
        let drillRow = document.getElementById('drilldown-row');

        if (drillRow && drillRow.previousSibling === tr) {
            drillRow.remove();
            return;
        }
        if (drillRow) drillRow.remove();

        fetch('drilldown.php?ajax=1&coach_name=' + encodeURIComponent(coach_name)
              + '&type_name=' + encodeURIComponent(type_name))
        .then(res => res.text())
        .then(html => {
            let newRow = document.createElement('tr');
            newRow.id = 'drilldown-row';
            let td = document.createElement('td');
            td.colSpan = tr.children.length;
            // 스크롤 가능 영역 만들기
            td.innerHTML = '<div style="max-height:300px; overflow-y:auto; border:1px solid #ccc; margin-top:10px;">' + html + '</div>';
            newRow.appendChild(td);
            tr.parentNode.insertBefore(newRow, tr.nextSibling);
        });
    }
    </script>
</head>
<body>
    <form action="../index.php" method="get" style="margin-top: 50px;">
        <button type="submit" style="<?= buttonStyle($button_color) ?>" >홈으로 가기</button>
    </form>
    <h1>감독별 전술 총계</h1>

    <form method="get" action="">
        <label for="coach">감독 선택: </label>
        <select name="coach" id="coach" required>
            <option value="" <?= $coach_filter == '' ? 'selected' : '' ?>>-- 선택하세요 --</option>
            <option value="all" <?= $coach_filter == 'all' ? 'selected' : '' ?>>전체 보기</option>
            <?php foreach ($coach_list as $coach): ?>
                <option value="<?= $coach['coach_id'] ?>" <?= $coach_filter == $coach['coach_id'] ? 'selected' : '' ?>>
                    <?= htmlspecialchars($coach['name']) ?>
                </option>
            <?php endforeach; ?>
        </select>
        <button type="submit" style="<?= buttonStyle($button_color) ?>">필터 적용</button>
    </form>

    <?php if ($coach_filter !== ''): ?>
    <table>
        <thead>
            <tr>
                <th>감독명</th>
                <th>전술명</th>
                <th>액션 개수</th>
                <th>드릴다운</th>
            </tr>
        </thead>
        <tbody>
        <?php while ($row = mysqli_fetch_assoc($result)):
            if ($row['coach_name'] === null && $row['type_name'] === null): ?>
                <tr class="total-row">
                    <td>총계</td>
                    <td></td>
                    <td><?= $row['action_count'] ?></td>
                    <td></td>
                </tr>
            <?php elseif ($row['coach_name'] !== null && $row['type_name'] === null): ?>
                <tr class="subtotal-row">
                    <td><?= htmlspecialchars($row['coach_name']) ?></td>
                    <td>소계</td>
                    <td><?= $row['action_count'] ?></td>
                    <td></td>
                </tr>
            <?php else: ?>
                <tr>
                    <td><?= htmlspecialchars($row['coach_name']) ?></td>
                    <td><?= htmlspecialchars($row['type_name']) ?></td>
                    <td><?= $row['action_count'] ?></td>
                    <td>
                        <button type="button" onclick="showDrilldown('<?= addslashes($row['coach_name']) ?>', '<?= addslashes($row['type_name']) ?>', this)">자세히 보기</button>
                    </td>
                </tr>
            <?php endif; ?>
        <?php endwhile; ?>
        </tbody>
    </table>
    <?php endif; ?>
</body>
</html>
<?php mysqli_close($conn); ?>
