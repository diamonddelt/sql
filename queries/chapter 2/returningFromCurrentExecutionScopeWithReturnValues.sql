-- Task: Return from the current execution scope; this time, use a return value!
-- Remember that the RETURN statement exists the current stored procedure, query, or batch immediately.
-- Therefore, if your .sql code has more than one RETURN in it, the first one that hits will kill the code
-- execution in that scope.

CREATE PROCEDURE ReportTurquoise AS

-- Test to see if any rows in the SalesLT.Product table are 'Turquoise' color
IF NOT EXISTS (
	SELECT ProductID AS "Product ID"
	FROM SalesLT.Product
	WHERE Color = 'Turquoise'
)
BEGIN
	-- Return a value of 0 to indicate there are no Turquoise colored products
	RETURN 0;
END;

SELECT ProductID AS "Product ID"
FROM SalesLT.Product	
WHERE Color = 'Turquoise';

-- Return a value of 1 to indicate that there are Turquoise colored products
RETURN 1;

-- Now, if you run "EXEC ReportTurquoise", you will see the return value.
-- Alternatively, you can assign it's return value to a variable, so later procedures or code
-- can use it for different needs and behaviors.