-- Task: Specify a range of values in a query, such as having a date column show dates only from a specific time period

USE AdventureWorksLT2012;

-- The following query gets product information from the product table,
-- and only shows list prices of products that are between 5 and 100 dollars.
-- If the "ListPrice" column had a special character in front of it,
-- the query would have had to handle it
SELECT "S".ProductID AS "Product ID",
	"S".Name AS "Product Name",
	"S".ListPrice AS "List Price"
FROM SalesLT.Product AS "S"
WHERE "S".ListPrice BETWEEN '5.00' AND '100.00';