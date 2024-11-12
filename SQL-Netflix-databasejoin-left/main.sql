--Setup
.read setup.sql

--Query

SELECT netflix_subscribers.Area, netflix_subscribers.Period, Subscribers, Revenue
FROM netflix_subscribers
LEFT JOIN netflix_revenue
--RIGHT JOIN netflix_revenue
ON netflix_subscribers.Area=netflix_revenue.Area
AND netflix_subscribers.Period=netflix_revenue.Period;