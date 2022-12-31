<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <div class="header-div">
        <h1>
            Professor
        </h1>
    </div>
</head>
<body>
    <form method="POST" action="teacherquery.php">
        <div class="header-div">
            <h1>
                View classes
            </h1>
        </div>
        <label for="ssn">Enter SSN:</label>
        <input id="ssn" type="password" name="ssn">
        <br>
        <br>
        <input type="submit">
    </form>
    <br>
    <br>
    <form method="POST" action="teacherquery.php">
        <div class="header-div">
            <h1>
                View course Grades
            </h1>
        </div>
        <label for="course_num">Course number:</label>
        <input id="course_num" type="text" name="course_num">
        <br>
        <br>
        <label for="section_num">Section number:</label>
        <input id="section_num" type="text" name="section_num">
        <br>
        <br>
        <input type="submit">
    </form>
</body>
<div id="button-div">
    <button onclick="history.go(-1);">Back </button>
</div>
</html>