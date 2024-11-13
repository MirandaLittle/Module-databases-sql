-- This file creates the schema(s)

-- Table structure for table `student`

CREATE TABLE student (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  age INT,
  grade_level VARCHAR(20),
  major VARCHAR(50),
  PRIMARY KEY (id)
);


-- Table structure for table `student_record`

CREATE TABLE student_record (
  id SERIAL PRIMARY KEY,
  student_id INTEGER,
  course_id INTEGER,
  assignment_id INTEGER,
  score INTEGER,
  FOREIGN KEY (student_id) REFERENCES students(id)
);


-- Table structure for table `course`

CREATE TABLE course (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT
);

-- Table structure for table `assignment`

CREATE TABLE assignment (
  id VARCHAR(20) PRIMARY KEY,
  course_id INTEGER,
  title VARCHAR(50),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);

