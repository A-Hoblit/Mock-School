<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Query</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <?php
    require('config.php');
    if (!$conn) {
        echo '<h1>Error Connecting to database<h1>';
    }

    if ($_POST["course_num"]){
         
        $course_num = $_POST["course_num"];

        $q = "SELECT B.section_num, classroom, meeting_days AS days, 
                    TIME_FORMAT(start_time, '%h:%i %p') AS start, 
                    TIME_FORMAT(end_time, '%h:%i %p') AS end,
                    COUNT(*) as count
              FROM sections AS A, enrollment_records AS B
              WHERE A.section_num = B.section_num AND A.course_num = B.course_num AND B.course_num = '$course_num'
              GROUP BY B.section_num;";

        $result = $conn->query($q);

        if ($result) {
            echo "<div class='header-div' style='background: white'><h1>Course number: " . $course_num . "</h1></div>";
            echo "<br>";?>
        <div class="table-div">
        <table cellpadding="0" cellspacing="0">
            <thead>
            <tr style="background-color: darkblue;">
                <th>
                    Section
                </th>
                <th>
                    Classroom
                </th>
                <th>
                    Meet Days
                </th>
                <th>
                    Start
                </th>
                <th>
                    End
                </th>
                <th>
                    Enrolled
                </th>
            </tr>
            </thead>
                <tbody>
<?php
            while ($row = $result->fetch_assoc()) {?>
                    <tr>
                        <td>
                            <?php echo $row["section_num"] ?>
                        </td>
                        <td>
                            <?php echo $row["classroom"] ?>
                        </td>
                        <td>
                            <?php echo $row["days"] ?>
                        </td>
                        <td>
                            <?php echo $row["start"] ?>
                        </td>
                        <td>
                            <?php echo $row["end"] ?>
                        </td>
                        <td>
                            <?php echo $row["count"] ?>
                        </td>
                    </tr>
      <?php }
        }else{
            echo "<tr>0 Results</tr>";
        } ?>
        </tbody>
        </table>
        </div>
<?php
    }else{
        if ($_POST["cwid"]){
         
        $cwid = $_POST["cwid"];

        $q = "SELECT course_num, grade
              FROM enrollment_records
              WHERE cwid = $cwid;";

        $result = $conn->query($q);

        if ($result) {
            echo "<div class='header-div' style='background: white'><h1>Course Grades</h1></div>";
            echo "<br>";?>
        <div class="table-div">
        <table cellpadding="0" cellspacing="0">
            <thead>
            <tr style="background-color: darkblue;">
                <th>
                    Course
                </th>
                <th>
                    Grade
                </th>
            </tr>
            </thead>
                <tbody>
<?php
            while ($row = $result->fetch_assoc()) {?>
                    <tr>
                        <td>
                            <?php echo $row["course_num"] ?>
                        </td>
                        <td>
                            <?php echo $row["grade"] ?>
                        </td>
                    </tr>
      <?php }
        }else{
            echo "<tr>0 Results</tr>";
        } ?>
        </tbody>
        </table>
        </div>
<?php }
    }
    $result->free_result();
    $conn->close();
?>
</body>
<div id="button-div">
    <button onclick="history.go(-1);">Back </button>
</div>
</html>