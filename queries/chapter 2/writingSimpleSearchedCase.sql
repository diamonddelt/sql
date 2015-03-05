-- Task: Write a "searched" CASE expression; In other words, the specific "cases" with the 
-- CASE block will contain expressions, instead of generic values like the previous basic example

USE AdventureWorksLT2012;

-- It is helpful to think of a searched CASE expression as multiple IF statements.
-- The searched CASE expression allows the use of "AND" and "OR" operators between each boolean

SELECT ProductID AS "Product ID", Name AS "Name", ListPrice AS "List Price",
	CASE
		WHEN Name LIKE 'A%' THEN 'Starts With "A"'
		WHEN Name LIKE 'B%' THEN 'Starts With "B"'
		ELSE 'Starts With "C-Z"' 
		END AS "Name Attributes"
FROM SalesLT.Product;

-- This CASE statement is also provided in the SELECT query, and iterates through each WHEN block for each row in the search criteria.