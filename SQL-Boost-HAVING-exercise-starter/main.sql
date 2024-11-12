-- Setup
.read setup.sql

-- Your query here show student_id of students who failed
--SELECT student_id, AVG(score) AS average_score
--From student_record
--GROUP BY student_id
--HAVING average_score<55;


--Query show names of students who failed
SELECT name, AVG(score) AS average_score
FROM student_record
LEFT JOIN student
ON student_record.student_id=student.id
GROUP BY student_id
HAVING average_score<55;

--Query join assignment and course
SELECT course.title, AVG(score) AS average_score
FROM student_record
JOIN assignment ON student_record.assignment_id=assignment.id
JOIN course ON student_record.course_id=course.id
GROUP BY course.title;
PRAGMA table_info(student_record);
