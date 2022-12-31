USE cs332f12;

INSERT INTO professors (ssn, title, salary, prof_name, sex, college_degrees)
VALUES (123456789, 
        'CPSC Department Lead', 
        150000, 
        'Shawn X. Wang', 
        'M', 
        'Masters of Computer Science'),
        (543216789,
        'CPSC Department Chairperson',
        100000,
        'Michelle Softwares',
        'F',
        'Masters of Computer Science'),
        (678912345,
        'Part Time Instructor',
        50000,
        'Thomas Processors',
        'M',
        'Bachelors of Computer Science'),
        (987654321,
        'MH Department Lead',
        140000,
        'Emma Differentials',
        'F',
        'Masters of Mathematics');

INSERT INTO departments (dept_num, telephone, dept_name, office_location, 
                         chair_person)
VALUES (12345,
        '7149092134',
        'Department of Computer Science',
        'CS-522',
        123456789), /*Shawn X Wang*/
        (54321,
        '7145678910',
        'Department of Mathematics',
        'MH-154',
        987654321); /*Emma Differentials*/

INSERT INTO courses (course_num, title, textbook, units, department)
VALUES ('CPSC332',
        'File Structures and Database Systems',
        'Fundamentals of Database Systems',
        3,
        12345), /*Department of Computer Science*/
        ('CPSC240',
        'Computer Organization and Assembly Language',
        'Assembly Language for x86 Processors',
        3,
        12345), /*Department of Computer Science*/
        ('CPSC315',
        'Professional Ethics on Computing',
        'Ethics for the Information Age',
        3,
        12345), /*Department of Computer Science*/
        ('MATH338',
        'Statistics Applied to Natural Sciences',
        'OpenIntro Statistics',
        4,
        54321); /*Department of Mathematics*/

INSERT INTO sections (section_num, classroom, seats, meeting_days, start_time,
                      end_time, course_num, professor)
Values (1,
        'CS103',
        40,
        'T/Th',
        '10:00',
        '11:15',
        'CPSC332', /*File Structures and Database Systems*/
        123456789),/*Shawn X. Wang*/
        (2,
        'CS404',
        32,
        'M/W',
        '14:00',
        '15:15',
        'CPSC332', /*File Structures and Database Systems*/
        123456789),/*Shawn X. Wang*/
        (1,
        'CS208',
        32,
        'F',
        '9:00',
        '12:30',
        'CPSC240', /*Computer Organization and Assembly Language*/
        543216789),/*Michelle Softwares*/
        (2,
        'CS202',
        34,
        'M/W',
        '12:00',
        '13:15',
        'CPSC240', /*Computer Organization and Assembly Language*/
        678912345),/*Thomas Processors*/
        (1,
        'CS103',
        40,
        'S',
        '8:00',
        '11:45',
        'CPSC315', /*Professional Ethics on Computing*/
        543216789),/*Michelle Softwares*/
        (2,
        'MH202',
        42,
        'F',
        '16:00',
        '18:45',
        'CPSC315', /*Professional Ethics on Computing*/
        543216789),/*Michelle Softwares*/
        (1,
        'MH300',
        35,
        'T/Th',
        '17:30',
        '18:45', 
        'MATH338', /*Statistics Applied to Natural Sciences*/
        987654321),/*Emma Differentials*/
        (2,
        'MH404',
        34,
        'M/W',
        '7:30',
        '8:45', 
        'MATH338', /*Statistics Applied to Natural Sciences*/
        987654321);/*Emma Differentials*/

INSERT INTO students (s_address, telephone, major)
VALUES ('1001 Computer Street, Fullerton, CA, 90902',
        '7041015050',
        12345), /*Department of Computer Science*/
        ('1002 Processor Street, Fullerton, CA, 90902',
        '7041850387',
        12345), /*Department of Computer Science*/
        ('1003 Memory Avenue, Anaheim, CA, 90504',
        '7142850373',
        12345), /*Department of Computer Science*/
        ('1004 Memory Avenue, Anaheim, CA, 90504',
        '7142638545',
        12345), /*Department of Computer Science*/
        ('2543 Solid State Street, Brea, CA, 10102',
        '7140483283',
        12345), /*Department of Computer Science*/
        ('1010 Graphics Alley, Fullerton, CA, 90902',
        '7248934687',
        12345), /*Department of Computer Science*/
        ('1234 Linear Lane, Placentia, CA, 90903',
        '7245283470',
        54321), /*Department of Mathematics*/
        ('1001 Derivative Drive, Yorba Linda, CA, 20902',
        '7150023589',
        54321); /*Department of Mathematics*/

INSERT INTO enrollment_records (cwid, course_num, section_num, grade)
VALUES  (1, 'CPSC332', 1, 'A'),
        (1, 'CPSC315', 1, 'A+'),
        (1, 'CPSC240', 1, 'B'),
        (1, 'MATH338', 1, 'B+'),
        (2, 'CPSC332', 2, 'C'),
        (2, 'CPSC315', 1, 'B+'),
        (2, 'CPSC240', 2, 'B-'),
        (2, 'MATH338', 2, 'A'),
        (3, 'CPSC332', 2, 'A-'),
        (3, 'CPSC315', 1, 'A'),
        (3, 'CPSC240', 1, 'B-'),
        (3, 'MATH338', 2, 'C'),
        (4, 'CPSC332', 1, 'A'),
        (4, 'CPSC315', 2, 'A+'),
        (4, 'CPSC240', 1, 'A'),
        (4, 'MATH338', 1, 'C+'),
        (5, 'CPSC332', 2, 'B-'),
        (5, 'CPSC315', 2, 'B+'),
        (5, 'CPSC240', 2, 'B'),
        (5, 'MATH338', 2, 'B+'),
        (6, 'CPSC332', 1, 'A'),
        (6, 'CPSC315', 2, 'A-'),
        (6, 'CPSC240', 1, 'B+'),
        (6, 'MATH338', 1, 'B+'),
        (7, 'CPSC332', 1, 'A'),
        (7, 'CPSC315', 1, 'A'),
        (7, 'CPSC240', 1, 'B+'),
        (7, 'MATH338', 2, 'B-'),
        (8, 'CPSC332', 2, 'A-'),
        (8, 'CPSC315', 1, 'A+'),
        (8, 'CPSC240', 1, 'A'),
        (8, 'MATH338', 1, 'A-');

INSERT INTO minors (cwid, dept_num)
VALUES  (1, 54321),
        (2, 54321),
        (3, 54321),
        (4, 54321),
        (5, 54321),
        (6, 54321),
        (7, 12345),
        (8, 12345);

INSERT INTO prerequisites(course_num, prereq_num)
VALUES ('CPSC332', 'MATH338');

INSERT INTO student_name (cwid, first_name, last_name)
VALUES  (1, 'Gordon', 'Barber'),
        (2, 'Ellie', 'Hewitt'),
        (3, 'Vinny', 'Conley'),
        (4, 'Kade', 'Hicks'),
        (5, 'Huw', 'Kane'),
        (6, 'Fleur', 'York'),
        (7, 'Jana', 'Bowers'),
        (8, 'Aston', 'Howe');

INSERT INTO professor_address (ssn, street_address, city, p_state, zip)
VALUES  (123456789, 
        '1809 Education Road',
        'Fullerton',
        'CA',
        92870),
        (543216789, /*Michelle Softwares*/
        '2270 Information Avenue',
        'Placentia',
        'CA',
        92870),
        (678912345, /*Thomas Processors*/
        '9050 Degree Loop',
        'Brea',
        'CA',
        92871),
        (987654321, /*Emma Differentials*/
        '3141 Logarithm Lane',
        'Yorba Linda',
        'CA',
        92870);

INSERT INTO professor_phone_number (ssn, area, p_number)
VALUES  (123456789, /*Shawn X. Wang*/
        714,
        1234567),
        (543216789, /*Michelle Softwares*/
        714,
        7654321),
        (678912345, /*Thomas Processors*/
        714,
        3487458),
        (987654321, /*Emma Differentials*/
        714,
        5378420);

        


        
        
        


        
