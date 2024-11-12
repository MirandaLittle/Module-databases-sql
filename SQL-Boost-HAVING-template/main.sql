-- Setup
.read setup.sql

-- Query
SELECT student_id, AVG(score) as average_score
FROM student_record
GROUP BY student_id
HAVING average_score >= 80;