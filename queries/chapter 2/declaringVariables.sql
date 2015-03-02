-- Task: Declaring variables to be used in more advanced scripting techniques. The problem at hand
-- is building a search string, storing the search string, and using it later in a WHERE clause.

USE AdventureWorksLT2012;

-- Variables use the DECLARE statement. 
-- Syntax: DECLARE @VariableName type(length) = data;

-- As far as variable concerns between 'varchar' and 'nvarchar', the basic research I did led me to 
-- conclude that the difference is chiefly 'nvarchar' supports unicode data, and 'varchar' does not.
-- Since disk space is cheap and it is better to avoid data incompatibilities, I will use 'nvarchar'

-- Declare a 'Black' color variable to use later
DECLARE @SearchColor nvarchar(20) = 'Black';

-- Query all the products in the SalesLT.Product table, but filter the results based on the color variable
SELECT ProductID AS "Product ID",
	Name AS "Product Name",
	Color AS "Color"
FROM SalesLT.Product
WHERE Color = @SearchColor;

-- The following is an example of defining a variable with no value assignment (otherwise known as a null value)
-- This value will continue to be NULL until it is either programmatically assigned a value, or if it's intentionally
-- used to search for NULL values
DECLARE @NullValue nvarchar(10);