SELECT TerritoryID, SUM(TotalDue) AS TotalSales 
FROM Sales.SalesOrderHeader 
GROUP BY TerritoryID 
HAVING SUM(TotalDue) > 10000000




SELECT 
*
FROM Sales.SalesOrderHeader SOH



SELECT TerritoryID FROM Sales.SalesOrderHeader

SELECT ST.Name AS TerritoryName,SUM(TotalDue)AS TotalSales 
FROM Sales.SalesOrderHeader SOH 
LEFT OUTER JOIN Sales.SalesTerritory ST 
ON ST.TerritoryID = SOH.TerritoryID 
GROUP BY ST.Name HAVING SUM(TotalDue) > 10000000


SELECT Color, COUNT(*) AS ProductCount 
FROM Production.Product 
WHERE Color IS NOT NULL 
GROUP BY Color 
HAVING COUNT(*) >=20

SELECT P.Name AS [Product Name], SUM(SOD.OrderQty) AS ProductOrderCount
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SOD 
ON SOD.SalesOrderID = SOH.SalesOrderID
INNER JOIN Production.Product P
ON P.ProductID = SOD.ProductID 
WHERE SOH.OrderDate BETWEEN '1/1/2006' AND '12/31/2006' 
GROUP BY P.Name
HAVING SUM(SOD.OrderQty) >= 200


SELECT P.FirstName, P.LastName, COUNT(*) AS OrdersPlaced
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer C
ON C.CustomerID = SOH.CustomerID
INNER JOIN Person.Person P
ON P.BusinessEntityID = C.PersonID
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY P.FirstName, P.LastName
HAVING COUNT(*) >= 6 
ORDER BY OrdersPlaced DESC