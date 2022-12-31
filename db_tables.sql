USE cs332f12;

CREATE TABLE professors (
  ssn INT(9) NOT NULL,
  title VARCHAR(50) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  prof_name VARCHAR(50) NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  college_degrees VARCHAR(50) NOT NULL,
  PRIMARY KEY (ssn)
);

CREATE TABLE departments (
  dept_num INT(5) NOT NULL AUTO_INCREMENT,
  telephone VARCHAR(10) NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  office_location VARCHAR(50) NOT NULL,
  chair_person INT(9) NOT NULL,
  PRIMARY KEY (dept_num),
  FOREIGN KEY (chair_person) REFERENCES professors(ssn)
);

CREATE TABLE courses (
  course_num VARCHAR(20) NOT NULL,
  title VARCHAR(50) NOT NULL,
  textbook VARCHAR(50) NOT NULL,
  units INT(2) NOT NULL,
  department INT(5) NOT NULL,
  PRIMARY KEY (course_num),
  FOREIGN KEY (department) REFERENCES departments(dept_num)
);

CREATE TABLE sections (
  section_num INT(3) NOT NULL,
  classroom VARCHAR(50) NOT NULL,
  seats INT(3) NOT NULL,
  meeting_days VARCHAR(50) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  course_num VARCHAR(20) NOT NULL,
  professor INT(9) NOT NULL,
  PRIMARY KEY (course_num, section_num),
  FOREIGN KEY (course_num) REFERENCES courses(course_num),
  FOREIGN KEY (professor) REFERENCES professors(ssn)
);

CREATE TABLE students (
  cwid INT(20) NOT NULL AUTO_INCREMENT,
  s_address VARCHAR(255) NOT NULL,
  telephone VARCHAR(10) NOT NULL,
  major INT(5) NOT NULL,
  PRIMARY KEY (cwid),
  FOREIGN KEY (major) REFERENCES departments(dept_num)
  ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE enrollment_records (
  cwid INT(20) NOT NULL,
  course_num VARCHAR(20) NOT NULL,
  section_num INT(3) NOT NULL,
  grade VARCHAR(2) NOT NULL,
  PRIMARY KEY (cwid, course_num, section_num),
  FOREIGN KEY (cwid) REFERENCES students(cwid),
  FOREIGN KEY (course_num, section_num) REFERENCES sections(course_num, section_num)
);

CREATE TABLE minors (
  cwid INT(20) NOT NULL,
  dept_num INT(5) NOT NULL,
  PRIMARY KEY (cwid, dept_num),
  FOREIGN KEY (cwid) REFERENCES students(cwid),
  FOREIGN KEY (dept_num) REFERENCES departments(dept_num)
);

CREATE TABLE prerequisites (
  course_num VARCHAR(20) NOT NULL,
  prereq_num VARCHAR(20) NOT NULL,
  PRIMARY KEY (course_num, prereq_num),
  FOREIGN KEY (prereq_num) REFERENCES courses(course_num),
  FOREIGN KEY (course_num) REFERENCES courses(course_num)
);

CREATE TABLE student_name (
  cwid INT(20) NOT NULL,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  PRIMARY KEY (cwid),
  FOREIGN KEY (cwid) REFERENCES students(cwid)
);

CREATE TABLE professor_address (
  ssn INT(9) NOT NULL,
  street_address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  p_state VARCHAR(2) NOT NULL,
  zip INT(5) NOT NULL,
  PRIMARY KEY (ssn),
  FOREIGN KEY (ssn) REFERENCES professors(ssn)
);

CREATE TABLE professor_phone_number (
  ssn INT(9) NOT NULL,
  area INT(3) NOT NULL,
  p_number INT(7) NOT NULL,
  PRIMARY KEY (ssn),
  FOREIGN KEY (ssn) REFERENCES professors(ssn)
);