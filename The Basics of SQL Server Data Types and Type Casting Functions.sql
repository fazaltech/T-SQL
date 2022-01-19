SELECT GETDATE(),CAST(GETDATE() AS DATE)AS Casted_Date


SELECT GETDATE(),CONVERT (DATE,GETDATE())AS Type_Casted_Date

SELECT TOP 100 FirstName FROM Person.Person

--Conversion failed when converting the nvarchar value 'Syed' to data type int.

SELECT TOP 100 CAST(FirstName AS INT) FROM Person.Person

--1) Write the SQL SELECT statement that returns the FirstName column of Person.Person casted as
--the VARCHAR data type.

SELECT
CAST(FirstName AS VARCHAR)
FROM Person.Person

--2) Write three expressions in a single SELECT statement: one that returns the results of 11 divided
--by 4. The second column should return the result of 11 casted as float divided by 4 casted as
--float. The final column should divide 11.0 by 4.0 (including the decimal point and trailing zero).

SELECT
11/4,
CAST(11 AS FLOAT)/CAST(4 AS FLOAT),
11.0/4.0

--3) Cast the FirstName column of Person.Person as the VARCHAR(3) data type. What happens?
--Why?

SELECT
CAST(FirstName AS VARCHAR(3))
FROM Person.Person

--4) Many of the values in the Size column of the Production.Product table contain numeric values.
--Write a SELECT statement that returns the Size column casted as the integer data type. What is
--the result? Why?
SELECT
CAST(Size AS INT)
FROM Production.Product
