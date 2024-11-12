-- Setup
.read setup.sql

-- Query (Start coding below)

SELECT * FROM doctors WHERE location LIKE 'Sudan'; 

--delete indicator column
ALTER TABLE doctors DROP COLUMN indicator;

--SELECT * FROM doctors WHERE location LIKE 'Sudan';

-- rename count column
ALTER TABLE doctors RENAME COLUMN count TO doctors_per_10k;

--check if rename was succesful
--SELECT doctors_per_10k FROM doctors WHERE location LIKE 'Sudan';

--create new column
ALTER TABLE doctors 
ADD in_danger INTEGER
CHECK (in_danger IN (1, 0));

UPDATE doctors 
SET in_danger=1 
WHERE doctors_per_10k<=30;


UPDATE doctors 
SET in_danger=0 
WHERE doctors_per_10k>30;


SELECT * FROM doctors
ORDER BY location ASC, doctors_per_10k DESC;

PRAGMA table_info(doctors);
