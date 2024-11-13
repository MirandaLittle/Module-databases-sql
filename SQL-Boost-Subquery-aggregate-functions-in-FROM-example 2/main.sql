-- Setup
.read setup.sql

SELECT CHAR(10), "Subquery in FROM example";
-- Subquery that collects the highest average score of a student.

SELECT MAX(average_score)
FROM
	( SELECT AVG(score) AS average_score
		FROM student_record
		GROUP BY student_id );




SELECT CHAR(10), "Query that shows the average score of each student";
-- This query we used as subquery in the above example
SELECT AVG(score) AS average_score
FROM student_record
GROUP BY student_id;

--this query is finding the highest average score among all students by first calculating the average score for each student and then finding the maximum among those averages.