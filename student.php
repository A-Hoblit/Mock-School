<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <div class="header-div">
        <h1>
            Student
        </h1>
    </div>
</head>
<body>
    <form method="POST" action="studentquery.php">
        <div class="header-div">
            <h1>
                View available course sections
            </h1>
        </div>
        <label for="course_num">Course number:</label>
        <input id="course_num" type="text" name="course_num">
        <br>
        <br>
        <input type="submit">
    </form>
    <br>
    <br>
    <form method="POST" action="studentquery.php">
        <div class="header-div">
            <h1>
                View my grades
            </h1>
        </div>
        <label for="cwid">CWID:</label>
        <input id="cwid" type="text" name="cwid">
        <br>
        <br>
        <input type="submit">
    </form>
</body>
<div id="button-div">
    <button onclick="history.go(-1);">Back </button>
</div>
</html>