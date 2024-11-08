-- Setup
.read setup.sql

-- Query (Start coding below)

--SELECT location, period, count
--FROM doctors
--ORDER by
  --location ASC,
  --count DESC;



UPDATE doctors SET location='Sudan' WHERE location='Sudan (until 2011)';
SELECT location, period
FROM doctors
WHERE location='Sudan';

--solution 
--1. This one to check that we are not lying!
SELECT Location, Period 
FROM doctors 
WHERE Location LIKE 'Sudan%';

--2 & 3
UPDATE doctors 
SET Location='Sudan' 
WHERE Location LIKE 'Sudan%';

SELECT Location, Period 
FROM doctors 
WHERE Location='Sudan';