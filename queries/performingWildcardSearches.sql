-- Task: Perform various 'wildcard' searches, which are searches based on a generic pattern
-- within columns. Use various wildcards such as "%", "_", "[_]", and "[^_]"
-- Wildcard searches make use of the "LIKE" predicate.
-- "LIKE" allows pattern-matching searches.

USE AdventureWorksLT2012;

-- For the following wildcard searches, I will be using the SalesLT.ProductCategory table exclusively.

-- This query demonstrates the '%' wildcard, which returns all string results after the letter 'B'
SELECT Name AS "Product Name"
FROM SalesLT.ProductCategory
WHERE Name LIKE 'B%';

-- This query is a little different - it uses an ESCAPE character to search strings for the actual '%' character!
SELECT Name AS "Product Name"
FROM SalesLT.ProductCategory
WHERE Name LIKE '/%' ESCAPE '/';

-- The wildcard "_" is used to search for "single characters";
-- We append the rest of the word, and we are expecting to find "bikes", because the single letter
-- being sought is "B"
SELECT Name AS "Product Name"
FROM SalesLT.ProductCategory
WHERE Name LIKE '_ikes';

-- This query demonstrates the bracket wildcard search, which you can specify either with specific characters,
-- or a range of characters. In the following case, I used a combination of the string search '%' IN FRONT OF
-- the bracket search range for all letters, because I was trying to find any product names that end in "ing"
-- E.g. clothing, biking, skiing, etc
-- This range specifies a single character within the character range - it's important to remember that it's only a single character!
SELECT Name AS "Product Name"
FROM SalesLT.ProductCategory
WHERE Name LIKE '%[A-Z]ing';

-- The same sort of bracket wildcard search for a single character, only now
-- with the "^" symbol in front of the range of characters, and the '%' string pattern match afterwards, we are saying:
-- "Return results from the list which have a beginning character NOT in this list"
SELECT Name AS "Product Name"
FROM SalesLT.ProductCategory
WHERE Name LIKE '[^abcdf]%';

