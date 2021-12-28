SELECT MAX(TotalDue)
FROM Sales.SalesOrderHeader


--
SELECT TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC

--
SELECT COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
--

SELECT COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL


SELECT COUNT(FirstName)
From Person.Person


SELECT COUNT(DISTINCT FirstName)
From Person.Person


SELECT TOP 100 *
FROM Sales.SalesOrderHeader


SELECT SUM(TotalDue)
From Sales.SalesOrderHeader



SELECT AVG(TotalDue)
From Sales.SalesOrderHeader

SELECT COUNT(TotalDue)
From Sales.SalesOrderHeader

SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'


SELECT SUM(TotalDue)
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'



SELECT MAX(FirstName)
FROM Person.Person



SELECT MIN(FirstName)
FROM Person.Person

SELECT COUNT(*)
FROM Person.Person

SELECT *
FROM Person.Person

SELECT COUNT(MiddleName)
FROM Person.Person


SELECT MiddleName
FROM Person.Person
WHERE MiddleName IS NOT NULL

SELECT AVG(StandardCost)
FROM Production.Product
WHERE StandardCost > 0


SELECT AVG(Freight)
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 4

SELECT MAX(ListPrice)
FROM Production.Product

SELECT SUM(P.ListPrice*I.Quantity)
FROM Production.Product P
INNER JOIN Production.ProductInventory I
ON I.ProductID = P.ProductID
WHERE P.ListPrice > 0
