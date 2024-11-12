--Setup
.read setup.sql

--Query
SELECT netflix_subscribers.Area, netflix_subscribers.period, 
netflix_revenue.Area, netflix_revenue.Period, subscribers, 
-- SELECT *
FROM netflix_subscribers
FULL OUTER JOIN netflix_revenue
ON netflix_subscribers.Area=netflix_revenue.Area
    AND netflix_subscribers.Period=netflix_revenue.Period;
