-- Task: There is an existing "execution scope", or series of commands, statements, etc which are currently being executed.
-- The goal is to discontinue the scope of execution, possibly with a return code

-- There are two ways that the reference material suggests to exit the scope of execution:
-- 1. With no return value
-- 2. With a return value

USE AdventureWorksLT2012;

-- The "IF NOT EXISTS" combination tests the inside SQL statement to see if what it is
-- trying to return actually exists in the database.
-- If the statement evaluates to true, meaning "a row in SalesLT.Product containing the color 'Turquoise'
-- does NOT exist, then RETURN nothing, and END the IF statement
IF NOT EXISTS (
	SELECT ProductID AS "Product ID",
		Color AS "Product Color"
	FROM SalesLT.Product
	WHERE Color = 'Turquoise'
)
BEGIN
	RETURN;
END;

SELECT ProductID AS "Product ID"
FROM SalesLT.Product
WHERE Color = 'Turquoise';

-- You will notice if you run just the above SQL commands, that nothing was returned. It RETURNed nothing!
