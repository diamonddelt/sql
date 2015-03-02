-- Task: It is unrealistic to know ahead of time what data to assign to a variable, especially with complex data sets.
-- Retrieve data from a query, and assign it to a variable (this reminds me of "piping" in linux shell scripts).
-- The following example only works if the query used to assign the variable a value returns AT MOST one row.

USE AdventureWorksLT2012;

-- Declare the variable with the same data type and length as the field I'm trying to retrieve
DECLARE @SpecializedProductNumber nvarchar(25);

-- Query that column to get a result of at most one row
-- We know this only returns at most one row because the WHERE clause retrieves on the primary key (ProductID)
-- This is sometimes referred to as a "Singleton Select"
SELECT @SpecializedProductNumber = ProductNumber
FROM SalesLT.Product
WHERE ProductID = '714';
SELECT @SpecializedProductNumber AS "Specialized Product Number";

-- However, this presents a problem if the target row being queried does not return any data
-- Using some basic IF statement programming can get around this

DECLARE @SpecializedProductNumber2 nvarchar(25);
SELECT @SpecializedProductNumber2 = ProductNumber
FROM SalesLT.Product
WHERE ProductID = '679'; -- This product ID does not exist within the SalesLT.Product table

-- Using a system function "@@ROWCOUNT", we can gather the amount of rows in a result set and use it programmatically
IF @@ROWCOUNT = 1
	SELECT @SpecializedProductNumber2
ELSE
	SELECT 'Row count was greater than or less than 1!';