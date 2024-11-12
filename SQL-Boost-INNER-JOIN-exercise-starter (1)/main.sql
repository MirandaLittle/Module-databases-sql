-- Setup
.read setup.sql

-- Your query here
SELECT name, major, student_record.assignment_name, student_record.score
FROM student
INNER JOIN student_record
ON student_record.student_id = student.id;
