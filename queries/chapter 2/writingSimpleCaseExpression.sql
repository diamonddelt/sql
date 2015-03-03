-- Task: Write a simple CASE expression. CASE expressions are better than IF ELSE statements when
-- dealing with a well-defined set of possible values which should have their own outputs

USE AdventureWorksLT2012;

-- The following query will return products from the SalesLT.Product table based on their color,
-- and assign newly labeled values in a new column using the "AS" statement.
-- It is important to note that using CASE in this circumstance creates a new column, but this is not adding new data
-- to the original table.

-- It is also important to note that the CASE statement goes in the SELECT clause.

SELECT ProductID AS "Product ID", Name AS "Product Name", Color AS "Color",
	CASE Color
		WHEN 'Black' THEN 'Dark'
		WHEN 'Red' THEN 'American'
		WHEN 'White' THEN 'American'
		WHEN 'Blue' THEN 'American'
		WHEN 'Multi' THEN 'Rainbow'
		ELSE 'No Color'
	END AS "New Color"
FROM SalesLT.Product;

-- The most important thing to note here is that the result of the CASE is "returned" after it finds a matching row.
-- That result is stored into the "New Color" column created after the "END AS" block