-- Task: An internal business user wants to know some data about "products" that AdventureWorks sells,
-- but doesn't know what specific data he needs. We decide to retrieve all columns for the 
-- SalesLT.Product table to give to the user

USE AdventureWorksLT2012;

-- The following example is a basic SELECT query that simply retrieves all columns in the specified table
SELECT *
FROM SalesLT.Product;

-- The "*" is a wildcard; it has some potential issues.
-- While it makes querying an entire table easier for the DBA, an application written using this query
-- may expect the columns returned by the wildcard to be in the same order. It is generally better
-- practice to explicitly state the columns you wish to select when giving queries to application logic.

-- Additionally, "SELECT *" statements can reduce performance, especially when data is being transmitted
-- over a network, because you are returning unneccesary data in most circumstances.