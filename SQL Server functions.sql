
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
