-- Setup
.read setup.sql

-- Query
--Adding a new colum 'rating'
ALTER TABLE doctors 
ADD rating TEXT CHECK(rating IN ('low', 'good', 'perfect')); 
--populating the 'rating' column
UPDATE doctors
  SET rating='low' WHERE Count<2;
UPDATE doctors
  SET rating='good' WHERE Count BETWEEN 2 AND 4;
UPDATE doctors
  SET rating='perfect' WHERE Count>4;
--deleting 'Indicator' column
ALTER TABLE doctors 
  DROP column Indicator;
--Renaming 'Count'
ALTER TABLE doctors
  RENAME count TO doctors_per10k;
--Cheking that all is correct
PRAGMA table_info(doctors);