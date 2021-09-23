Select * from Person.Person


SELECT TOP 10 PERCENT	FirstName,MiddleName,LastName FROM PERSON.PERSON



SELECT TOP 100 * FROM Production.Product

SELECT TOP 100 * FROM Person.Person

SELECT TOP 100 FirstName AS "Customer First Name",LastName AS [Customer Last Name] FROM Person.Person

SELECT * FROM HumanResources.vEmployee

SELECT * FROM HumanResources.Employee


SELECT FirstName,LastName,EmailAddress,PhoneNumber FROM Sales.vIndividualCustomer

SELECT NationalIDNumber FROM HumanResources.Employee

SELECT NationalIDNumber,JobTitle FROM HumanResources.Employee

SELECT TOP 20 PERCENT NationalIDNumber,JobTitle,BirthDate FROM HumanResources.Employee

SELECT TOP 500 NationalIDNumber AS "SSN",JobTitle AS "JobTitle",BirthDate FROM HumanResources.Employee

SELECT * FROM Sales.SalesOrderHeader

SELECT TOP 50 PERCENT * FROM Sales.Customer

SELECT Name AS "Product's Name" FROM Production.vProductAndDescription

SELECT TOP 400 * FROM HumanResources.Department

SELECT * FROM Production.BillOfMaterials

SELECT TOP 1500 * FROM Sales.vPersonDemographics



