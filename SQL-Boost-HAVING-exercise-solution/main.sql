-- Setup
.read setup.sql

-- Step 1
SELECT CHAR(10), "Step 1";

SELECT student_id, AVG(score) as average_score
FROM student_record
GROUP BY student_id
HAVING average_score < 55;

-- Step 2
SELECT CHAR(10), "Step 2";

SELECT s.name, AVG(score) as average_score
FROM student_record
JOIN student s ON student_id = s.id
GROUP BY student_id
HAVING average_score < 55;

-- Step 3
SELECT CHAR(10), "Step 3";

SELECT c.title, AVG(sr.score) AS average_score
FROM student_record sr
JOIN assignment a ON sr.assignment_id = a.id
JOIN course c ON a.course_id = c.id
GROUP BY c.title;
