-- Setup
.read setup.sql

-- Exercise 1: The amount of listings in Centrum-West grouped by room_type:
SELECT char(10), "Show the amount of listings in Centrum-West grouped by room_type:";

SELECT room_type, COUNT(id) AS num_listings
FROM listings
WHERE neighbourhood = "Centrum-West"
GROUP BY room_type;


-- Exercise 2: Average price per room_type in Amsterdam
SELECT char(10), "Show avg price per room type in Amsterdam:";

SELECT room_type, AVG(price) AS average_price
FROM listings
GROUP BY room_type;

-- Exercise 3: Average price per room_type & neighbourhood in Amsterdam
SELECT char(10), "Show avg price per room type in each neighboorhood ordered by price:";

SELECT room_type, neighbourhood, AVG(price) AS average_price
FROM listings
GROUP BY neighbourhood, room_type
ORDER BY price ASC;


-- Exercise 4: Average price < 80 per room_type & neighbourhood in Amsterdam
SELECT char(10), "Show avg price per room type < 80 in each neighboorhood ordered by price:";

SELECT room_type, neighbourhood, AVG(price) AS average_price
FROM listings
GROUP BY neighbourhood, room_type
HAVING average_price < 80
ORDER BY price ASC;



-- Exercise 5: Average rating per listing name and roomtype
SELECT char(10), "Show average rating per listing name and roomtype:";

SELECT l.name, l.room_type, AVG(rating) AS avg_rating
FROM reviews
JOIN listings l on l.id = reviews.listing_id
GROUP BY listing_id
ORDER BY avg_rating DESC;