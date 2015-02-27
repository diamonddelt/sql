-- Task: Identify any rows in a table that have NULL values using the SQL "NULL" keyword

USE AdventureWorksLT2012;

-- The results of this query return quite a few rows;
-- In this database, many products dealing with construction equipment, bikes, and vehicles
-- have no color.
SELECT *
FROM SalesLT.Product
WHERE Color IS NULL;

-- This query is a bit more refined.
-- It assigns an alias to all columns, as well as the table.
-- It seeks only rows of products which have a color (AKA NOT NULL),
-- and uses a logical operator ">=" to find products with a list price
-- greater than or equal to $35.00
SELECT "Sales".ProductID AS "Product ID",
	"Sales".Name AS "Product Name",
	"Sales".Color AS "Product Color",
	"Sales".StandardCost AS "Product Standard Cost"
FROM SalesLT.Product AS "Sales"
WHERE "Sales".Color IS NOT NULL
	AND "Sales".ListPrice >= '35.00';