<?php

// 담당자 2171054 황서아

error_reporting(E_ALL);
ini_set('display_errors', 1);
include "../db_connect.php";

$action = $_POST["action"] ?? "";
$message = "";

// INSERT
if ($action === "insert_team") {

    $team_name = trim($_POST["team_name"]);

    if ($team_name === "") {
        $message = "팀명을 입력하세요.";
    } else {

        mysqli_begin_transaction($conn);

        try {
            $sql = "SELECT COALESCE(MAX(team_id), 0) + 1 AS new_id FROM team";
            $res = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($res);
            $new_team_id = $row["new_id"];

            $sql = "INSERT INTO team (team_id, team_name) VALUES (?, ?)";
            $stmt = mysqli_prepare($conn, $sql);
            mysqli_stmt_bind_param($stmt, "is", $new_team_id, $team_name);
            mysqli_stmt_execute($stmt);

            mysqli_commit($conn);
            $message = "새 팀이 추가되었습니다.";

        } catch (Exception $e) {
            mysqli_rollback($conn);
            $message = "팀 추가 실패: " . $e->getMessage();
        }
    }
}

if ($action === "insert_coach") {

    $coach_name = trim($_POST["coach_name"]);
    $birth_date = $_POST["birth_date"];
    $birth_area = $_POST["birth_area"];
    $team_id = intval($_POST["team_id"]);

    if ($coach_name === "") {
        $message = "감독 이름을 입력하세요.";
    } else {
        mysqli_begin_transaction($conn);

        try {
            $sql = "SELECT COALESCE(MAX(coach_id), 0) + 1 AS new_id FROM coach";
            $res = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($res);
            $new_coach_id = $row["new_id"];

            $sql = "INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id)
                    VALUES (?, ?, ?, ?, ?)";
            $stmt = mysqli_prepare($conn, $sql);
            mysqli_stmt_bind_param($stmt, "isssi",
                $new_coach_id, $coach_name, $birth_date, $birth_area, $team_id);
            mysqli_stmt_execute($stmt);

            mysqli_commit($conn);
            $message = "새 감독이 추가되었습니다.";

        } catch (Exception $e) {
            mysqli_rollback($conn);
            $message = "감독 추가 실패: " . $e->getMessage();
        }
    }
}

// UPDATE

$protected_coaches = [
    "A. Wenger", "A. Conte", "C. Shakespeare",
    "M. Pochettino", "R. Hodgson", "D. Moyes"
];

if ($action === "update_coach") {

    $team_id = intval($_POST["team_id"]);
    $coach_name = trim($_POST["coach_name"]);
    $birth_date = $_POST["birth_date"];
    $birth_area = $_POST["birth_area"];

    $q = mysqli_query($conn, "SELECT coach_id, name FROM coach WHERE team_id = $team_id");
    $row = mysqli_fetch_assoc($q);

    if (!$row) {
        $message = "이 팀에는 감독이 없습니다.";
    } else {
        $coach_id = $row["coach_id"];
        $old_name = $row["name"];

        if (in_array($old_name, $protected_coaches)) {
            $message = "기존 감독은 수정할 수 없습니다.";
        } else {
            mysqli_begin_transaction($conn);

    try {
        $sql = "UPDATE coach 
                SET name = ?, birth_date = ?, birth_area = ?
                WHERE coach_id = ?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "sssi",
            $coach_name, $birth_date, $birth_area, $coach_id);
        mysqli_stmt_execute($stmt);

        mysqli_commit($conn);
        $message = "감독 정보가 성공적으로 수정되었습니다.";

    } catch (Exception $e) {
        mysqli_rollback($conn);
        $message = "감독 수정 실패: " . $e->getMessage();
    }
}}
}


// DELETE

// 기존 데이터 (삭제 금지)
$protected_teams = [
    "Arsenal FC", "Chelsea FC", 
    "Tottenham Hotspur FC", 
    "Crystal Palace FC", "West Ham United FC"
];

$protected_coaches = [
    "A. Wenger", "A. Conte", "C. Shakespeare",
    "M. Pochettino", "R. Hodgson", "D. Moyes"
];

if (!empty($_POST['action']) && $_POST['action'] === 'delete') {

    $target_type = $_POST['target_type'] ?? '';

    if ($target_type === "team") {
        $target_id = intval($_POST['team_target_id'] ?? 0);
    } else if ($target_type === "coach") {
        $target_id = intval($_POST['coach_target_id'] ?? 0);
    } else {
        $message = "삭제할 대상을 선택하세요.";
        $target_id = 0;
    }

    if ($target_id <= 0) {
        $message = "삭제할 대상을 선택하세요.";
    }
    else if ($target_type === "team") {

        // 팀 이름 조회
        $q = mysqli_query($conn, "SELECT team_name FROM team WHERE team_id = $target_id");
        $row = mysqli_fetch_assoc($q);
        if (!$row) {
            $message = "팀 정보가 존재하지 않습니다.";
        } else {

            $team_name = $row["team_name"];

            if (in_array($team_name, $protected_teams)) {
                $message = "기존 팀은 삭제할 수 없습니다.";
            } else {

                mysqli_begin_transaction($conn);

                try {
                    // 감독 삭제
                    $sql = "DELETE FROM coach WHERE team_id = ?";
                    $stmt = mysqli_prepare($conn, $sql);
                    mysqli_stmt_bind_param($stmt, "i", $target_id);
                    mysqli_stmt_execute($stmt);

                    // 팀 삭제
                    $sql = "DELETE FROM team WHERE team_id = ?";
                    $stmt = mysqli_prepare($conn, $sql);
                    mysqli_stmt_bind_param($stmt, "i", $target_id);
                    mysqli_stmt_execute($stmt);

                    mysqli_commit($conn);
                    $message = "팀 및 담당 감독이 삭제되었습니다.";

                } catch (Exception $e) {
                    mysqli_rollback($conn);
                    $message = "삭제 실패: " . $e->getMessage();
                }
            }
        }
    }
    else if ($target_type === "coach") {

        $q = mysqli_query($conn, "SELECT name FROM coach WHERE coach_id = $target_id");
        $row = mysqli_fetch_assoc($q);

        if (!$row) {
            $message = "감독 정보가 존재하지 않습니다.";
        } else {

            $coach_name = $row["name"];

            if (in_array($coach_name, $protected_coaches)) {
                $message = "기존 감독은 삭제할 수 없습니다.";
            } else {

                mysqli_begin_transaction($conn);

                try {
                    // 감독 삭제
                    $sql = "DELETE FROM coach WHERE coach_id = ?";
                    $stmt = mysqli_prepare($conn, $sql);
                    mysqli_stmt_bind_param($stmt, "i", $target_id);
                    mysqli_stmt_execute($stmt);

                    mysqli_commit($conn);
                    $message = "감독이 삭제되었습니다.";

                } catch (Exception $e) {
                    mysqli_rollback($conn);
                    $message = "삭제 실패: " . $e->getMessage();
                }
            }
        }
    }
}


$sql = "
    SELECT t.team_id, t.team_name,
           c.coach_id, c.name AS coach_name
    FROM team t
    LEFT JOIN coach c ON t.team_id = c.team_id
    ORDER BY t.team_id
";
$list = mysqli_query($conn, $sql);

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Page</title>
<style>
body { font-family: Arial; text-align: center; }
table { border-collapse: collapse; width: 70%; margin: 20px auto; }
th, td { padding: 10px; border: 1px solid #333; }
.msg { color: blue; font-size: 18px; margin-top: 10px; }
</style>
</head>

<body>

<form action="../index.php" method="get" style="margin-top:20px;">
    <button type="submit">홈으로 가기</button>
</form>


<h1>팀 & 감독 관리 (Transaction)</h1>

<?php if ($message !== "") { ?>
<div class="msg"><?= $message ?></div>
<?php } ?>

<h2> 현재 팀 & 감독 목록</h2>

<table>
<tr>
    <th>팀명</th>
    <th>감독명</th>
</tr>

<?php while ($r = mysqli_fetch_assoc($list)) { ?>
<tr>
    <td><?= $r["team_name"] ?></td>
    <td><?= $r["coach_name"] ?: "-" ?></td>
</tr>
<?php } ?>

</table>

<h2><h2>새 팀 추가</h2>
<form method="POST">
    <input type="hidden" name="action" value="insert_team">
    팀명: <input type="text" name="team_name">
    <button type="submit">추가</button>
</form>

<h2>새 감독 추가</h2>
<form method="POST">
    <input type="hidden" name="action" value="insert_coach">
    이름: <input type="text" name="coach_name">
    생일: <input type="date" name="birth_date">
    출생국가: <input type="text" name="birth_area">
    담당 팀:
    <select name="team_id">
        <?php
        $teams = mysqli_query($conn, "SELECT team_id, team_name FROM team");
        while ($t = mysqli_fetch_assoc($teams)) {
            echo "<option value='{$t["team_id"]}'>{$t["team_name"]}</option>";
        }
        ?>
    </select>
    <button type="submit">추가</button>
</form>

<h2>감독 수정</h2>
<form method="POST">
    <input type="hidden" name="action" value="update_coach">

    팀 선택:
    <select name="team_id">
        <?php
        $tList = mysqli_query($conn, "SELECT team_id, team_name FROM team");
        while ($t = mysqli_fetch_assoc($tList)) {
            echo "<option value='{$t['team_id']}'>{$t['team_name']}</option>";
        }
        ?>
    </select>

    <br><br>
    새로운 이름: <input type="text" name="coach_name">
    생일: <input type="date" name="birth_date">
    출생국가: <input type="text" name="birth_area">

    <button type="submit">수정</button>
</form>

<h2>팀 및 감독 삭제</h2>

<script>
function updateDeleteOptions() {
    const targetType = document.getElementById("target_type").value;

    document.getElementById("delete_team_select").style.display =
        (targetType === "team") ? "inline-block" : "none";

    document.getElementById("delete_coach_select").style.display =
        (targetType === "coach") ? "inline-block" : "none";
}
</script>

<form method="POST">
    <input type="hidden" name="action" value="delete">

    삭제 대상:
    <select name="target_type" id="target_type" onchange="updateDeleteOptions()">
        <option value="team">팀</option>
        <option value="coach">감독</option>
    </select>

    <select name="team_target_id" id="delete_team_select" style="margin-left:15px;">
        <?php
        $teamQ = mysqli_query($conn, "SELECT team_id, team_name FROM team ORDER BY team_name");
        while ($t = mysqli_fetch_assoc($teamQ)) {
            echo "<option value='{$t['team_id']}'>{$t['team_name']}</option>";
        }
        ?>
    </select>

    <select name="coach_target_id" id="delete_coach_select" style="margin-left:15px; display:none;">
        <?php
        $coachQ = mysqli_query($conn, "SELECT coach_id, name FROM coach ORDER BY name");
        while ($c = mysqli_fetch_assoc($coachQ)) {
            echo "<option value='{$c['coach_id']}'>{$c['name']}</option>";
        }
        ?>
    </select>

    <button type="submit" style="color:red; margin-left:15px;">삭제</button>
</form>

<script>
updateDeleteOptions();
</script>

</body>
</html>
