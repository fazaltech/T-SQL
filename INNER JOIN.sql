SELECT P.Name ,P.ProductNumber,PS.Name AS [ProductSubCategory Name]
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID=PS.ProductSubcategoryID

SELECT *
FROM Production.ProductSubcategory




SELECT PS.NAME AS ProductSubCategoryName,
		PC.NAME AS ProductCategoryName
FROM Production.ProductSubcategory PS
INNER JOIN Production.ProductSubcategory PC
ON PS.ProductCategoryID=PC.ProductCategoryID

SELECT * FROM Person.Person

SELECT P.FirstName,P.LastName,E.EmailAddress,PP.PhoneNumber
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID=E.BusinessEntityID
INNER JOIN Person.PersonPhone PP
ON P.BusinessEntityID=PP.BusinessEntityID
