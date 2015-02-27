-- Task: Lets face it - the table name for SalesLT.ProductModelProductDescription is long.
-- To make it easier to write a longer query, it can be helpful to give the table name an alias.
-- It works similarly to creating a column alias, but the alias is applied in the "FROM" clause

USE AdventureWorksLT2012;

-- Below, you can see the alias is applied in the "FROM" clause,
-- even though the "SELECT" clause, which comes first, uses the alias to refer to the columns.
-- This technique becomes more useful when queries that involve multiple tables have similar names.
-- It doesn't affect the output of the query, but it helps the database developer understand the query.
SELECT	"PMPD".ProductModelID AS "Product Model ID",
		"PMPD".Culture AS "Product Model Culture"
FROM SalesLT.ProductModelProductDescription AS "PMPD";