-- Setup
.read setup.sql

-- Part 1 -- Subquery in SELECT clause. The highest score for each student
SELECT s.name, (SELECT MAX(score) FROM student_record sr WHERE sr.student_id=s.id) AS max_score
FROM student s
ORDER BY max_score DESC;

  

-- Part 2 -- Subquery in FROM clause
--SELECT CHAR(10), "Average scores per assignment";
SELECT CHAR(10), "Highest and lowest performing average scores for an assignment";

SELECT course_title, assignment_title, MAX(avg_score), MIN(avg_score)
FROM
(SELECT c.title AS course_title, a.title AS assignment_title, AVG(score) AS avg_score
FROM student_record sr
JOIN assignment a ON sr.assignment_id=a.id
JOIN course c ON a.course_id=c.id
GROUP BY assignment_id); -- subquery that calculates avg score




-- Part 3 -- Subquery in WHERE clause
--which students have the highest average scores. Meaning that they have a score that is higher than the average scores of all students combined
SELECT s.name, c.title, a.title, sr.score
FROM student_record sr
JOIN student s ON sr.student_id=s.id
JOIN assignment a ON sr.assignment_id=a.id
JOIN course c ON a.course_id=c.id
WHERE sr.score>(SELECT AVG(score) FROM student_record) --start with subquery
ORDER BY s.name;



