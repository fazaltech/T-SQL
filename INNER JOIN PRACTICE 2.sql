SELECT
P.FirstName,
P.LastName,
PP.PasswordHash
FROM Person.Person P
INNER JOIN Person.[Password] PP
ON PP.BusinessEntityID = P.BusinessEntityID

SELECT
E.BusinessEntityID,
E.NationalIDNumber,
E.JobTitle,
EDH.DepartmentID,
EDH.StartDate,
EDH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID

SELECT
P.FirstName,
P.LastName,
PP.PasswordHash,
E.EmailAddress
FROM Person.Person P
INNER JOIN Person.[Password] PP
ON PP.BusinessEntityID = P.BusinessEntityID
INNER JOIN Person.EmailAddress E
ON E.BusinessEntityID = P.BusinessEntityID


--SELECT
--B.Title,
--B.ISBN,
--A.AuthorName
--FROM BookAuthor BA
--INNER JOIN Book B
--ON B.BookID = BA.BookID
--INNER JOIN Author A
--ON A.AuthorID = BA.AuthorID



--SELECT
--B.Title,
--B.ISBN,
--A.AuthorName,
--P.PublisherName
--FROM BookAuthor BA
--INNER JOIN Book B
--ON B.BookID = BA.BookID
--INNER JOIN Author A
--ON A.AuthorID = BA.AuthorID
--INNER JOIN Publisher P
--ON P.PublisherID = B.PublisherID


