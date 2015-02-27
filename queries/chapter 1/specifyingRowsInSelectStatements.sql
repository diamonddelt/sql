-- Task: A user wants to know the first and last names of all the customers in the SalesLT.Customer table,
-- but they are only interested in customers with last name "Miller".
-- In this situation, we only want to select the applicable rows within the entire table.

USE AdventureWorksLT2012;

-- The following SELECT query provides a "WHERE" clause for the criteria above
SELECT FirstName, LastName
FROM SalesLT.Customer
WHERE LastName = 'Miller';

-- If the user later decided that he also wanted to view customers with the first name "Ben" or the last name "Campbell",
-- the above query could be modified with the logical operators "AND" or "OR"

-- Example using "AND"
SELECT FirstName, LastName
FROM SalesLT.Customer
WHERE LastName = 'Miller' AND FirstName = 'Ben';

-- Example using "OR"
SELECT FirstName, LastName
FROM SalesLT.Customer
WHERE LastName = 'Miller' OR LastName = 'Campbell';

-- The "WHERE" clause does not retrieve rows that match the condition specified, but rather sifts out rows that meet the condition
-- after the original SELECT clause executes.