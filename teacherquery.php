<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor Query</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <?php
    require('config.php');
    if (!$conn) {
        echo '<h1>Error Connecting to database<h1>';
    }

    if ($_POST["ssn"]){
         
        $ssn = $_POST["ssn"];

        $q = "SELECT title, classroom, meeting_days AS days, 
             TIME_FORMAT(start_time, '%h:%i %p') AS start, 
             TIME_FORMAT(end_time, '%h:%i %p') AS end
             FROM courses AS A, sections AS B
             WHERE A.course_num = B.course_num AND B.professor = $ssn;";

        $result = $conn->query($q);

        if ($result) {
            echo "<div class='header-div'><h1>Classes</h1></div>";
            echo "<br>";?>
        <div class="table-div">
        <table cellpadding="0" cellspacing="0">
            <thead>
            <tr style="background-color: darkblue;">
                <th>
                    Title
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
            </tr>
            </thead>
                <tbody>
<?php
            while ($row = $result->fetch_assoc()) {?>
                    <tr>
                        <td>
                            <?php echo $row["title"] ?>
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
        if ($_POST["course_num"]){
         
        $course_num = $_POST["course_num"];
        $section_num = $_POST["section_num"];

        $q = "SELECT grade, COUNT(*) AS count
             FROM sections AS A, enrollment_records AS B
             WHERE A.section_num = B.section_num AND A.course_num = B.course_num
                AND A.course_num = '$course_num' AND A.section_num = $section_num
             GROUP BY grade
             ORDER BY grade;";

        $result = $conn->query($q);

        if ($result) {
            echo "<div class='header-div'><h1>Course Grades for " 
                    . $course_num . "-" . $section_num . "</h1></div>";
            echo "<br>";?>
        <div class="table-div">
        <table cellpadding="0" cellspacing="0">
            <thead>
            <tr style="background-color: darkblue;">
                <th>
                    Grade
                </th>
                <th>
                    Count
                </th>
            </tr>
            </thead>
                <tbody>
<?php
            while ($row = $result->fetch_assoc()) {?>
                    <tr>
                        <td>
                            <?php echo $row["grade"] ?>
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