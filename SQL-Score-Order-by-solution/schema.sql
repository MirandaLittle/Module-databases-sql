-- This file creates the schema(s)

-- Table structure for table `students`

CREATE TABLE student (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  age INT,
  grade_level VARCHAR(20),
  major VARCHAR(50),
  PRIMARY KEY (id)
);

-- Table structure for table `student_records`

CREATE TABLE student_record (
  id SERIAL PRIMARY KEY,
  student_id INT,
  course VARCHAR(100),
  assignment VARCHAR(100),
  score INT,
  FOREIGN KEY (student_id) REFERENCES student(id)
);
