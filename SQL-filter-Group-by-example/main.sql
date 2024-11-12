-- Setup
.read setup.sql

-- Query (Start coding below) 
--SELECT period, SUM(Count), COUNT(count)--count how many entries contain values
--FROM doctors
--GROUP BY period; --for each year, the sum of count is calulated = total doctors

--Query: average amount of doctors over the years per location

SELECT location, AVG(count), COUNT(period) -- other colums can be used for count as well
FROM doctors
WHERE period>2012 AND period<2018
GROUP BY location;
