-- Task: Sort results from a query using a custom sort-order that is not standard to SQL.
-- For example, sorting products by type, which requires assigning each type to a numeric
-- value and then sorting the numeric values.

USE AdventureWorksLT2012;

-- This query does something interesting - it assigns a low numeric value to character representations of values
-- for "S", "M", "L", and "XL", and asserts that they are lower than the rest of the numeric sizes.
-- The custom sorting is done using a "CASE" "WHEN" "THEN" "ELSE" "END" statement
SELECT Size AS "Product Size",
	Name AS "Product Name",
	ProductID AS "Product ID"
FROM SalesLT.Product
WHERE Size IS NOT NULL
ORDER BY CASE	WHEN Size = 'S' THEN 1
				WHEN Size = 'M' THEN 2
				WHEN Size = 'L' THEN 3
				WHEN Size = 'XL' THEN 4
				ELSE Size END
				ASC;

-- This query will sort all products with a product ID over 500,
-- whose name begins with "full-finger" as a higher priority in a descending sort
-- This also requires a CASE statement
SELECT Size AS "Product Size",
	Name AS "Product Name",
	ProductID AS "Product ID"
FROM SalesLT.Product
WHERE ProductID > '500'
	AND Size IS NOT NULL
ORDER BY CASE
	WHEN Name LIKE 'full-finger%' THEN 1
	END DESC;