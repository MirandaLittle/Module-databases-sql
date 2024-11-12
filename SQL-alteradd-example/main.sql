-- Setup
.read setup.sql

-- Queries
--here we add the new column
ALTER TABLE doctors 
ADD rating varchar(10) CHECK(rating IN ('low', 'good', 'perfect')); 

--here we update values in the new column
UPDATE doctors
  SET rating='low' WHERE Count<2;

UPDATE doctors
  SET rating='good' WHERE Count BETWEEN 2 AND 4;

UPDATE doctors
  SET rating='perfect' WHERE Count>4;

--now we simply select something to see
--that it worked
SELECT location, period, rating 
FROM doctors;

--Schema
.schema schema.sql