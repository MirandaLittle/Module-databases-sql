-- This file creates the schema(s)

-- Table structure for table `listings`
--
CREATE TABLE listings (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    host_id INTEGER NOT NULL,
    host_name VARCHAR(50) NOT NULL,
    neighbourhood VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    price INTEGER NOT NULL,
    minimum_nights INTEGER NOT NULL,
    availability_365 INTEGER 
);


-- Table structure for table `reviews`
CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    listing_id INTEGER NOT NULL,
    rating INTEGER CHECK(rating >= 0 AND rating <= 5) NOT NULL,
    FOREIGN KEY (listing_id) REFERENCES listings(id)
);