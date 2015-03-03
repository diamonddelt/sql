-- Task: Write an example of an IF THEN ELSE statement in SQL, while using a variable

USE AdventureWorksLT2012;

-- The statement syntax is as follows:
-- IF Boolean_expression
-- { sql statement | statement block }
-- [ ELSE
-- { sql statement | statement block } ]


-- The following script declares a character variable, and creates an IF THEN ELSE statement
-- to return either the row with the exact product description if the variable is correct,
-- or all of the other rows from the product description table if it is not correct
DECLARE @Description nvarchar(50) = 'Chromoloy Steel';

IF @Description = 'Chromoloy Steel'
BEGIN
	PRINT 'Display the only relevant row in the table.'
	SELECT *
	FROM SalesLT.ProductDescription
	WHERE ProductDescriptionID = '3'
END
ELSE
BEGIN
	PRINT 'Display all of the rows in the table except for the relevant one'
	SELECT *
	FROM SalesLT.ProductDescription
	WHERE ProductDescriptionID <> '3'
END;

-- Note that the "BEGIN" and "END" keywords are used in place of a traditional programming "curly brace"
-- i.e. to be explicit what should happen within the branching paths of the conditional.
-- This is more necessary when a conditional can have multiple SELECT statements or other things going on.