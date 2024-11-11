-- Setup
.read setup.sql

-- Query
--here we delete the column
ALTER TABLE doctors 
DROP COLUMN Indicator;

--now we check
SELECT * FROM doctors;
