-- Setup
.read setup.sql

-- Part 1 -- Subquery in SELECT clause
SELECT CHAR(10), "Highest score of each student";

SELECT s.name, (SELECT MAX(score) FROM student_record sr WHERE sr.student_id = s.id) AS num_assignments
FROM student s
ORDER BY num_assignments DESC;

  

-- Part 2 -- Subquery in FROM clause
SELECT CHAR(10), "Average scores per assignment";

-- First we get the average scores per assignment
SELECT c.title AS course_title, a.title as assignment_title, AVG(sr.score) AS average_score
FROM student_record sr
JOIN assignment a on a.id = sr.assignment_id
JOIN course c on c.id = a.course_id
GROUP BY sr.assignment_id;

-- Now we want to know the highest performing assignment
SELECT CHAR(10), "Highest and lowest performing average score from a course assignment";

SELECT course_title, assignment_title, MAX(average_score), MIN(average_score)
FROM (
SELECT c.title AS course_title, a.title as assignment_title, AVG(sr.score) AS average_score
FROM student_record sr
JOIN assignment a on a.id = sr.assignment_id
JOIN course c on c.id = a.course_id
GROUP BY sr.assignment_id
  );


-- Part 3 -- Subquery in WHERE clause
SELECT CHAR(10), "Students average score";

SELECT AVG(score) as average_score
FROM student_record sr;


-- Use the above subquery to compare student scores with the average score
SELECT CHAR(10), "Students performing better than average";

SELECT s.name, c.title, a.title, sr.score
FROM student s
JOIN student_record sr ON sr.student_id = s.id
JOIN assignment a ON a.id = sr.assignment_id
JOIN course c ON c.id = a.course_id
WHERE sr.score > (SELECT AVG(score) as average_score
FROM student_record)
ORDER BY s.name;
