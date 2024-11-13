-- Setup
.read setup.sql

-- The average age of all students
SELECT CHAR(10), "Average age students";
SELECT AVG(age) FROM student;


-- Subquery that filter on average age
SELECT CHAR(10), "Subquery example";

SELECT id, name, age 
FROM student 
WHERE age > (SELECT AVG(age) FROM student);
