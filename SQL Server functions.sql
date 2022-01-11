
SELECT 'Brewster', LEFT ('Brewster' ,4)


SELECT TOP 100*
FROM Person.Person

SELECT LEFT(LastName,5)
FROM Person.Person

SELECT LEFT(LastName,5),LastName
FROM Person.Person

SELECT RIGHT(LastName,5) AS[Last Five Character of Last Name]
FROM Person.Person

--Sub String
SELECT TOP 100 
		FirstName,
		SUBSTRING(FirstName,3,5)
FROM Person.Person

--CHAR_INDEX
SELECT CHARINDEX('r','Brewster',3)

--TRIM Function
SELECT LTRIM('   This is a test'),RTRIM('   This is a test    '),TRIM('   This is a test    ')

--UPPER AND LOWER CASE

SELECT 'brewster',UPPER('Brewster') AS [UPPER CASE],LOWER('BRewSTER')AS [LOWER CASE]

--CHAR LENGTH

SELECT TOP 100 LastName,LEN(LastName) FROM Person.Person


--CHAR LENGTH WITH TRIM Function

SELECT '   T-SQL Class',LTRIM('   T-SQL Class'),LEN(LTRIM('   T-SQL Class')),LEN('T-SQL Class ')


--SUB STRING 

SELECT
	[Name],
	SUBSTRING([Name],3,7)AS Step_1
FROM Production.Product

