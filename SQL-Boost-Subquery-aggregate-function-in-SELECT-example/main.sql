-- Setup
.read setup.sql

SELECT "Subquery in SELECT example", CHAR(10);
-- Subquery that counts the amount of assignments per course

SELECT c.title, (SELECT COUNT(*) FROM assignment a WHERE a.course_id = c.id) AS num_assignments
FROM course c;

--In this query, we're selecting the title column from the course table, as well as a subquery that counts the number of assignments for each course. The subquery selects the COUNT(*) of rows from the assignment table where the course_id matches the id of the current course in the outer query.

--This query will return a table with two columns: title and num_assignments, where num_assignments is the count of assignments for each course.