USE cs332f12;

/* TEACHER QUERIES */

/* QUERY 1: */
SELECT title, classroom, meeting_days AS days, 
       TIME_FORMAT(start_time, '%h:%i %p') AS start, 
       TIME_FORMAT(end_time, '%h:%i %p') AS end
FROM courses AS A, sections AS B
WHERE A.course_num = B.course_num AND B.professor = 123456789;

/* QUERY 2: */
SELECT grade, COUNT(*) AS count
FROM sections AS A, enrollment_records AS B
WHERE A.section_num = B.section_num AND A.course_num = B.course_num
      AND A.course_num = 'CPSC332' AND A.section_num = '2'
GROUP BY grade
ORDER BY grade;

/* STUDENT QUERIES */

/* QUERY 1: */

/* COMBINE THESE TWO
SELECT classroom, meeting_days AS days, 
       TIME_FORMAT(start_time, '%h:%i %p') AS start, 
       TIME_FORMAT(end_time, '%h:%i %p') AS end
FROM sections AS A
WHERE A.course_num = 'CPSC332';

SELECT section_num AS section, COUNT(*) as count
FROM enrollment_records as A
WHERE A.course_num='CPSC332'
GROUP BY section_num;
*/

SELECT B.section_num, classroom, meeting_days AS days, 
       TIME_FORMAT(start_time, '%h:%i %p') AS start, 
       TIME_FORMAT(end_time, '%h:%i %p') AS end,
       COUNT(*) as count
FROM sections AS A, enrollment_records AS B
WHERE A.section_num = B.section_num AND A.course_num = B.course_num AND B.course_num = 'CPSC332'
GROUP BY B.section_num;

/* QUERY 2: */

SELECT course_num, grade
FROM enrollment_records
WHERE cwid = 1;


