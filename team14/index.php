<?php
// 담당자 2171054 황서아
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>BigData Application - Team 14</title>
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
            margin-bottom: 40px;
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

    <h1>Team 14 Dashboard</h1>

    <div class="menu-container">
        <form action="pages/drilldown.php" method="get">
        <button type="submit">Drilldown</button>
        </form>

        <form action="pages/group_by.php" method="get">
            <button type="submit">Group By</button>
        </form>


        <form action="pages/ranking.php" method="get">
            <button type="submit">Ranking</button>
        </form>

        <form action="pages/windowing.php" method="get">
            <button type="submit">Windowing</button>
        </form>



    </div>

</body>
</html>
