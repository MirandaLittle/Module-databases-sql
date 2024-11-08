-- Setup
.read setup.sql

-- Your Queries here
SELECT student_id, assignment, score 
FROM student_record
WHERE course='SQL Basics'
ORDER BY
assignment ASC,
score DESC;