<?php

// 담당자 2171054 황서아

error_reporting(E_ALL);
ini_set('display_errors', 1);

include '../db_connect.php';


// 감독 목록 불러오기
$coach_sql = "SELECT coach_id, name FROM coach ORDER BY name";
$coach_result = mysqli_query($conn, $coach_sql);

// 폼 입력값
$selected_coach = isset($_POST['coach_id']) ? $_POST['coach_id'] : '';
$selected_kpi   = isset($_POST['kpi']) ? $_POST['kpi'] : 'smart';
$window_size    = isset($_POST['window']) ? intval($_POST['window']) : 3;

// KPI 쿼리 매핑
$kpi_column = "";
$kpi_title = "";

if ($selected_kpi === 'smart') {
    $kpi_column = "Smart pass";
    $kpi_title = "Smart pass 개수";
} else if ($selected_kpi === 'launch') {
    $kpi_column = "Launch";
    $kpi_title = "Launch 개수";
}

// 조회 버튼 클릭 시
$rows = [];
if (!empty($selected_coach)) {

    // 1) 감독의 경기 목록 + KPI 개수 조회
    $sql = "
        SELECT 
            mg.game_id,
            mg.game_week,
            COUNT(me.event_id) AS kpi_value
        FROM match_game mg
        JOIN match_team mt ON mg.game_id = mt.game_id
        LEFT JOIN match_event me 
            ON me.game_id = mg.game_id 
            AND me.team_id = mt.team_id
            AND me.event_name = ?
        WHERE mt.coach_id = ?
        GROUP BY mg.game_id, mg.game_week
        ORDER BY mg.game_week ASC;
    ";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "si", $kpi_column, $selected_coach);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    // 2) PHP에서 windowing 계산
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    // 이동 평균 컬럼 추가
    for ($i = 0; $i < count($rows); $i++) {
        $sum = 0;
        $count = 0;

        for ($j = $i; $j > $i - $window_size && $j >= 0; $j--) {
            $sum += $rows[$j]['kpi_value'];
            $count++;
        }

        $rows[$i]['moving_avg'] = $sum / $count;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>KPI 흐름 안정성</title>
    <style>
        body { text-align: center; font-family: Arial; }
        table { margin: 20px auto; border-collapse: collapse; width: 70%; }
        th, td { padding: 10px; border: 1px solid black; }
    </style>
</head>
<body>

<form action="../index.php" method="get" style="margin-top:20px;">
    <button type="submit">홈으로 가기</button>
</form>

<h1>감독별 전술 KPI 흐름 안정성(Windowing)</h1>

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

    <br><br>

    <label>KPI 선택:</label>
    <select name="kpi">
        <option value="smart" <?= $selected_kpi == 'smart' ? 'selected' : '' ?>>Smart pass 개수</option>
        <option value="launch" <?= $selected_kpi == 'launch' ? 'selected' : '' ?>>Launch 개수</option>
    </select>

    <br><br>

    <label>Window Size (1~20):</label>
    <input type="number" name="window" min="1" max="20" value="<?= $window_size ?>">

    <br><br>

    <button type="submit">흐름 분석 실행</button>
</form>

<?php if (!empty($selected_coach) && empty($rows)) { ?>
    <p style="color:red; font-size:20px;">⚠ 데이터가 없습니다.</p>
<?php } ?>

<?php if (!empty($rows)) { ?>
<table>
    <tr>
        <th>게임 Week</th>
        <th><?= $kpi_title ?></th>
        <th>Window 이동평균</th>
    </tr>

    <?php foreach ($rows as $r) { ?>
        <tr>
            <td><?= $r['game_week'] ?></td>
            <td><?= $r['kpi_value'] ?></td>
            <td><?= number_format($r['moving_avg'], 2) ?></td>
        </tr>
    <?php } ?>
</table>
<?php } ?>

</body>
</html>
