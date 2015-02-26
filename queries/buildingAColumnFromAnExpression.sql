-- Task: The SalesLT.Customer table has two columns: "EmailAddress" and "Phone". It would be nice to be able to query
-- only two columns: the first name of the customer, and their "contact information", which is a concatenation of
-- their email address and phone number. This can be accomplished by building an "expression" and using
-- SQL's built-in "concatenation" operator (+)

USE AdventureWorksLT2012;

-- The following SELECT query uses an expression to append a space in between two returned columns,
-- and creates a single column from them. It also assigns it an alias which describes the resulting column.
SELECT	FirstName AS "First name",
		(EmailAddress + ' ' + Phone) AS "Contact Information"
FROM SalesLT.Customer;

-- NOTE: If you do not provide an alias to a column which results from an expression,
-- then the SQL result set output for that new column will not have a column header, as you can see in the following example:
SELECT	FirstName AS "First name",
		(EmailAddress + ' ' + Phone)
FROM SalesLT.Customer;