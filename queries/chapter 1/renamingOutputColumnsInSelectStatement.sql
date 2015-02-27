-- Task: A user is requesting the direct output of a query for a few columns of the SalesLT.Product table,
-- but the default column names returned by the query are not as "human readable" as the user would like.
-- We can assign an "alias" to the columns as they are returned, which serves two purposes:
-- 1) It makes the column header more readable
-- 2) It makes a longer query easier to read, because you can refer to a column by it's alias once it's defined

-- The syntax for an alias is: columnName AS "Column Name Alias"

USE AdventureWorksLT2012;

-- The following SELECT statement assigns an alias to each of the columns returned by the query.
-- These aliases will be visible as column headers on the resulting query result set.
SELECT	Name AS "Product Name", 
		ListPrice AS "Product List Price", 
		ProductNumber AS "Product ID Number"
FROM SalesLT.Product

-- You can also assign an alias by using "Bracket Notation" (Non-ISO Standard Syntax)
-- "ListPrice AS [List Price]"