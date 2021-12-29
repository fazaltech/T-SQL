SELECT SalesPersonID, SUM(TotalDue) AS[Total Sales]
FROM Sales.SalesOrderHeader
GROUP BY SalesPersonID


SELECT SalesPersonID,TotalDue
FROM Sales.SalesOrderHeader
GROUP BY SalesPersonID

SELECT *
FROM Production.ProductInventory


SELECT ProductID, 
		Sum(Quantity) AS [Total in Stock],
		COUNT(*) AS [Locations]
FROM Production.ProductInventory
GROUP BY ProductID


SELECT TerritoryID,SalesPersonID, SUM(TotalDue) AS [Total Sales]
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
GROUP BY TerritoryID,SalesPersonID
ORDER BY 1,2

SELECT * FROM syslogins 



SELECT 
ST.Name AS[Territory Name],
P.FirstName+' '+P.LastName AS SalesPersonName,

SUM(TotalDue) AS [Total Sales]
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID=SOH.SalesPersonID
INNER JOIN Person.Person P
ON P.BusinessEntityID=SP.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID=SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
GROUP BY ST.Name,P.FirstName+' '+P.LastName
ORDER BY 1,2
