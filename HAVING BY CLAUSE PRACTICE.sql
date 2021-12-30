SELECT ST.Name AS[Territory Name],
SUM(TotalDue) AS[Total Sales - 2006]
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID=SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
GROUP BY ST.Name
HAVING SUM(TotalDue) >4000000
ORDER BY 1

SELECT PS.Name[SubCategory Name],Count(*) AS [Product Count]
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID=P.ProductSubcategoryID
GROUP BY PS.Name
HAVING COUNT(*) >=15
ORDER BY 1

SELECT
Department AS[Department Name],
COUNT(*) AS [Employee Count]
FROM HumanResources.vEmployeeDepartment
GROUP BY Department
HAVING COUNT(*)>=8


SELECT
Department AS[Department Name],
COUNT(*) AS [Employee Count]
FROM HumanResources.vEmployeeDepartment
GROUP BY Department
HAVING COUNT(*)IN(6,10)


SELECT SalesPersonID,
		SUM(TotalDue) AS [Total Sales Amount],
		COUNT(*) AS [Total Sales Count]
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
	AND SalesPersonID IS NOT NULL
	GROUP BY SalesPersonID
	HAVING SUM(TotalDue) >=2000000
	AND COUNT(*) >=75
	ORDER BY [Total Sales Amount] DESC