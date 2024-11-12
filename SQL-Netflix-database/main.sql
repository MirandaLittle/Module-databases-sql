--Setup
.read setup.sql

--Query

SELECT netflix_subscribers.Area, netflix_subscribers.Period, subscribers, Revenue --subscribers and revenue only exist in their resprective tables, no need to specify table, area and period exists in both tables
--SELECT *
FROM netflix_subscribers 
INNER JOIN netflix_revenue 
ON netflix_subscribers.Area=netflix_revenue.Area
  AND netflix_subscribers.Period=netflix_revenue.Period;

