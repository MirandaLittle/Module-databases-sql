-- Imports and executes the schema
-- Without the schema, we cannot import our CSV file into the database
.read schema.sql

-- Inserts data
.read listings.sql
.read reviews.sql