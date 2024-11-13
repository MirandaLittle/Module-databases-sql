-- Setup
.read setup.sql

-- Exercise 1: The amount of listings in Centrum-West grouped by room_type:
SELECT char(10), "Show the amount of listings in Centrum-West grouped by room_type:";

-- Your code
SELECT room_type, COUNT(*)
FROM listings
WHERE neighbourhood='Centrum-West'
GROUP BY room_type;



-- Exercise 2: Average price per room_type in Amsterdam
SELECT char(10), "Show avg price per room type in Amsterdam:";

-- Your code
SELECT room_type, AVG(price)
FROM listings
GROUP BY room_type;



-- Exercise 3: Average price per room_type & neighbourhood in Amsterdam
SELECT char(10), "Show avg price per room type in each neighboorhood ordered by price:";

-- Your code
SELECT room_type, neighbourhood, AVG(price) AS avg_price
FROM listings
GROUP BY neighbourhood, room_type
ORDER BY avg_price;


-- Exercise 4: Average price < 80 per room_type & neighbourhood in Amsterdam
SELECT char(10), "Show avg price per room type < 80 in each neighboorhood ordered by price:";

-- Your code
SELECT room_type, neighbourhood, AVG(price) AS avg_price
FROM listings
GROUP BY neighbourhood, room_type
HAVING avg_price<80
ORDER BY price ASC;


-- Exercise 5: Average rating per listing name and roomtype
SELECT char(10), "Show average rating per listing name and roomtype:";

-- Your code
SELECT name, room_type, AVG(rating) AS avg_rating
FROM listings
JOIN reviews ON reviews.listing_id=listings.id
GROUP BY listing_id
ORDER BY avg_rating DESC;
