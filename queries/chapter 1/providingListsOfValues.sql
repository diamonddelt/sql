-- Task: Providing a list of values within a grouping of fields.
-- For example, assume you are looking at a table with a column of prices,
-- and you want to query a list of prices that are exactly: $12.00, $20.00, and $35.00,
-- while excluding all the other prices.
-- This operation is possible by using the "IN" operator.

USE AdventureWorksLT2012;

-- The following query selects the product ID, name, and list price of products,
-- but only if their list price is "IN" the group of ('49.99', '9.50', '3578.27')
SELECT ProductID AS "Product ID",
	Name AS "Product Name",
	ListPrice AS "Product List Price"
FROM SalesLT.Product
WHERE ListPrice IN ('49.99', '9.50', '3578.27');

-- The query could have also been written using the "=" sign and the "OR" operator to do the same thing:
SELECT ProductID AS "Product ID",
	Name AS "Product Name",
	ListPrice AS "Product List Price"
FROM SalesLT.Product
WHERE ListPrice = '49.99'
	OR ListPrice = '9.50'
	OR ListPrice = '3578.27';