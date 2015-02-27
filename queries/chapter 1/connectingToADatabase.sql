-- Task: Connecting to the AdventureWorksLT2012 database


-- This is necessary if you haven't connected to the specific database at hand
-- By default, upon launching SQL Server 2012, you are only connected to the master db
-- Using the "USE" command allows you to omit the database name, and use 'schema.object' notation

-- A SELECT query before using the "USE" command, to query the SalesLT.Address table
SELECT *
FROM AdventureWorksLT2012.SalesLT.Address;

USE AdventureWorksLT2012;
-- The same SELECT query after using the "USE" command, to query the SalesLT.Address table
SELECT *
FROM SalesLT.Address;