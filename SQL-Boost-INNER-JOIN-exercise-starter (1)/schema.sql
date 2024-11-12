-- This file creates the schema(s)

-- Table structure for table `student`

CREATE TABLE student (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  age INT,
  grade_level VARCHAR(50),
  major VARCHAR(50),
  PRIMARY KEY (id)
);


-- Table structure for table `student_record`

CREATE TABLE student_record (
  id SERIAL PRIMARY KEY,
  student_id INTEGER,
  assignment_name VARCHAR(50),
  score INTEGER,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

