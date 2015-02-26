-- Task: Return a series of columns from a table, but using the "NOT" condition

USE AdventureWorksLT2012;

-- The following query will select only the Customer IDs whose
-- "Address Type" is NOT the "Main office"
-- It also applies both a table and a series of column aliases.
SELECT "SLT".CustomerID AS "Customer ID",
	"SLT".AddressID AS "Address ID",
	"SLT".AddressType AS "Address Type"
FROM SalesLT.CustomerAddress AS "SLT"
WHERE NOT ("SLT".AddressType = 'Main Office');