-- Setup
.read setup.sql

-- Your Queries here
-- Step 1
SELECT "---- Step 1 ----";
  
SELECT student_id, assignment, score
FROM student_record
WHERE course = "SQL Basics"
ORDER BY score DESC;


-- Step 2
SELECT "---- Step 2 ----";

SELECT student_id, assignment, score
FROM student_record
WHERE course = "SQL Basics"
ORDER BY assignment ASC, score DESC;