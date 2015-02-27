-- Task: Presenting a set of results N rows at a time, because the result set is either too large 
-- to view at once, or because the application for some reason or another requires a smaller
-- subset of the results.

USE AdventureWorksLT2012;

-- This approach uses "OFFSET" and "FETCH", which are two new keywords in SQL Server 2012.

-- This basic "SELECT *" statement will give a baseline result set, which we will then shorten
-- in a subsequent query within this file
SELECT *
FROM SalesLT.Product
ORDER BY Product.Name ASC;

-- The result set is 295 rows, which is too long for whatever application that is consuming the output.

-- This query returns the same result set as above, but starts, or "OFFSET"s at a numerical value (in this case 0th row)
-- Using the "FETCH NEXT X ROWS ONLY" syntax will display only the next rows according to the value given to "x"
SELECT *
FROM SalesLT.Product
ORDER BY Product.Name ASC
OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY;

-- It is important to note that "OFFSET" and "FETCH" keywords are specific to an "ORDER BY" clause, and will not work without it.
-- It is also important to ensure that the ORDER BY is "deterministic", or "always returns the same data in the same order", when
-- viewing subsets of data, because if the data returned is variable, then you will not have any confidence in the artificial
-- "data window" you specify with the "OFFSET" and "FETCH"