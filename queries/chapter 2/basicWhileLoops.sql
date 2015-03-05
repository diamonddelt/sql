-- Task: Write a series of basic WHILE statements. 
-- The WHILE loops continually until the condition is no longer true

-- The syntax for WHILE loops are:
-- WHILE {condition to test is true}
-- BEGIN
--		[ SQL statements go here ]
-- END

USE AdventureWorksLT2012;

-- This is a basic iterative WHILE loop which will run 10 times, and print the output
DECLARE @Counter INT = 0;
WHILE @Counter < 10
BEGIN
	PRINT @Counter
	SELECT @Counter = @Counter + 1
END

-- This is another basic WHILE loop, which demonstrates that the actual 'assignment' of value
-- to a declared variable can occur in a SELECT clause with no FROM clause.
DECLARE @Integer1 INT, @Integer2 INT;
SELECT @Integer1 = 0, @Integer2 = 1;
WHILE @Integer1 <> @Integer2
BEGIN
	SELECT 'The variable @Integer1 is not equal to @Integer2';
	SELECT @Integer1 = @Integer1 + 1;
END

