<?php
// 담당자 2176122 남연정, 2171054 황서아
session_start();

if (isset($_POST['color'])) {
    $_SESSION['button_color'] = $_POST['color'];
}

$button_color = $_SESSION['button_color'] ?? '#EAEAEA';

function buttonStyle($color) {
    return "background-color: $color; color: black; border: black; border: 1px solid black; cursor: pointer; padding: 10px 20px; font-size: 1em;";
}
?>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>Team14 Demo</title>
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
        button {
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
        }

   #color-area {
    position: absolute;
    top: 20px;
    right: 20px;
    display: flex;
    flex-direction: column;
    align-items: flex-end; /* 우상단 정렬 */
    z-index: 10;
}

#color-row {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 8px; /* select와 색상 변경 버튼 사이 간격 */
}

#logout-form {
    margin-top: 8px;
}
   
        .menu-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 250px;
        }
        .menu-container form button {
            width: 100%;
            padding: 12px;
            font-size: 1.1em;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <h1>Team14 Demo</h1>
    <h2 style="font-size:2em; font-weight:normal; margin-top:0;">&lt;감독별 전술 분석 리포트&gt;</h2>
   
    <div class="menu-container">
        <form action="pages/group_by.php" method="get">
            <button type="submit"  style="<?= buttonStyle($button_color) ?>">감독별 전술 성공률</button>
        </form>

        <form action="pages/drilldown.php" method="get" >
            <button type="submit" style="<?= buttonStyle($button_color) ?>">감독별 전술 총계</button>
        </form>

        <form action="pages/windowing.php" method="get">
            <button type="submit" style="<?= buttonStyle($button_color) ?>">감독별 전술 KPI 흐름</button>
        </form>

        <form action="pages/ranking.php" method="get">
            <button type="submit" style="<?= buttonStyle($button_color) ?>">감독별 전술 KPI 순위</button>
        </form>

        <form action="pages/coach_detail.php" method="get">
            <button type="submit" style="<?= buttonStyle($button_color) ?>">감독 상세보기</button>
        </form>

        <form action="pages/transaction.php" method="get">
            <button type="submit" style="<?= buttonStyle($button_color) ?>">데이터 관리</button>
        </form>
    </div>

<div id="color-area">
  <div id="color-row">
    <select id="colorSelect">
      <option value="#D4F4FA" <?= $button_color == '#D4F4FA' ? 'selected' : '' ?>>하늘</option>
      <option value="#FFD9EC" <?= $button_color == '#FFD9EC' ? 'selected' : '' ?>>분홍</option>
      <option value="#E4F7BA" <?= $button_color == '#E4F7BA' ? 'selected' : '' ?>>연두</option>
    </select>
    <button onclick="changeColor()" style="<?= buttonStyle($button_color) ?>">색상 변경</button>
  </div>
  <form action="logout.php" method="post" id="logout-form">
    <button type="submit" style="<?= buttonStyle($button_color) ?>">사용자 상태 초기화</button>
  </form>
</div>


<script>
function changeColor() {
    let color = document.getElementById('colorSelect').value;
    fetch(window.location.href, {
        method: 'POST',
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: 'color=' + encodeURIComponent(color)
    }).then(() => {
        document.querySelectorAll('button').forEach(btn => {
            btn.style.backgroundColor = color;
        });
    });
}
</script>

    </body>
</html>
