-- Task: Retrieving specific columns from a table

USE AdventureWorksLT2012;

-- This is a perfect example of using a basic SELECT query.

-- The query below retrieves the CustomerID, FirstName, and EmailAddress columns
-- of the 'SalesLT.Customer' table
SELECT CustomerID, FirstName, LastName
FROM SalesLT.Customer;

-- The "FROM" clause specifies the data source, using "schema.table" notation.
-- The "schema" contains the object, and the schema is owned by a user
-- Therefore, you can modify object ownership via schema ownership