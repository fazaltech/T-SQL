
--1) Return the first eight characters of the string “This is a basic string”.

SELECT LEFT('This is a basic string', 8)

--2) Return the last six characters of the string “This is another string”
SELECT RIGHT('This is another string', 6)

--3) Find the index (integer location) of the first instance of the letter “e” in each product name from
--the Production.Product table.

SELECT CHARINDEX('e', [Name]),[Name]
FROM Production.Product

--4) Find the substring of the territory name from Sales.SalesTerritory starting at the third character
--and lasting four characters in length.
SELECT SUBSTRING([Name], 3, 4),[Name]
FROM Sales.SalesTerritory

--5) Starting with the string “This is a slightly longer string”, find the last eight characters and then,
--from that result, find the first four characters. In other words, find the first four characters of
--the last eight characters from the string “This is a slightly longer string”. (Hint: use a nested
--function for this query)
SELECT LEFT(RIGHT('This is a slightly longer string', 8), 4)--6) Find the string that results from finding all characters to left of and including the first “e” in each
--FirstName from Person.Person. Only return those results where the resulting string is not blank.
--(Hint: this will be challenging. Use a nested function in the SELECT statement and then that
--same nested function in the WHERE clause)SELECT
LEFT(FirstName, CHARINDEX('e', FirstName, 0)),FirstName
FROM Person.Person
WHERE LEFT(FirstName, CHARINDEX('e', FirstName, 0)) <> ''


