-- Setup
.read setup.sql

-- Query
--here we delete the column
ALTER TABLE doctors 
  DROP column Indicator;

--Time to rename
ALTER TABLE doctors
  RENAME count TO doctors_per10k;

--finally we check
SELECT location, period, doctors_per10k 
FROM doctors;
