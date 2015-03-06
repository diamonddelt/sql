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

-- This WHILE loop explores the concept of an infinite loop, and BREAKing out of such a condition

-- Setting infinte loop condition
WHILE (1 = 1)
BEGIN -- Beginning outer loop
	PRINT 'Endless loop'
	IF (1 = 1) -- if condition to specify how to break out of loop
	BEGIN
		PRINT 'But this IF statement prevents an infinite loop'
		BREAK; -- The BREAK statement terminates the loop
	END;
END;

-- This WHILE loops uses the CONTINUE condition.
-- It also uses the "SET" command, which is used to set or change an existing variable 
-- to a new value.
DECLARE @var int = 1
WHILE @var = 1
BEGIN
	SET @var = @var + 1;
	IF @var > 1
		CONTINUE;
	PRINT 'You will never see this message';
END;