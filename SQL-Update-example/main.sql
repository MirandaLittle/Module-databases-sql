-- Setup
.read setup.sql

-- Query
--select location, period, count from doctors where count='';
--Run it and comment out the statement above
--Uncomment the 2 statements below
update doctors set Count=0 where Count='';
select location, period, count from doctors where Count=0;