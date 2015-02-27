-- Task: Sort a queries results in either ascending or descending order
-- Sorting query results usually uses the "ORDER BY" syntax, and the "ASC" or "DESC" attributes
-- specify whether or not the results are sorted ascending or descending

USE AdventureWorksLT2012;

-- This query should be self-explanatory.
-- However, what is interesting to note is that because I sorted by "DESC" on a numeric column,
-- the numbers returned from highest to lowest.
-- In strings, DESC returns results "z" -> "a", and numerics "+infinity" -> "-infinity"
-- ASC works in reverse
SELECT SalesOrderID AS "Sales Order ID",
	OrderQty AS "Order Quantity",
	ProductID AS "Product ID",
	UnitPrice AS "Unit Price"
FROM SalesLT.SalesOrderDetail
ORDER BY ProductID DESC;

-- Note: Even when your query grabs data from a column you believe is already ordered, or 
-- from a View or Index which you believe is already ordered, you should still order it anyways.
-- This is important in cases order matters, because there are corner cases that can still negatively
-- affect the order from those sorts of queries.

-- This query is almost exactly the same as above, except for the fact that the sort is done
-- using a column not in the original search query. This is completely valid.
-- However, it is probably a better practice to include the sort column in the search,
-- so the ordering is more readable to someone who only sees the output.
SELECT SalesOrderID AS "Sales Order ID",
	OrderQty AS "Order Quantity",
	ProductID AS "Product ID",
	UnitPrice AS "Unit Price"
FROM SalesLT.SalesOrderDetail
ORDER BY rowguid ASC;