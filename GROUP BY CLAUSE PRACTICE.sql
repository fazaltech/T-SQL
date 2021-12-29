SELECT
PersonType,
COUNT(*) AS PersonCount
FROM Person.Person
GROUP BY PersonType


SELECT
Color,
COUNT(*) AS ProductCount
FROM Production.Product
WHERE Color IN ('Red', 'Black')
GROUP BY Color

SELECT
TerritoryID,
COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY TerritoryID


SELECT
ST.Name AS TerritoryName,
COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY ST.Name

--SELECT
--A.AuthorName,
--COUNT(*) AS BookCount
--FROM BookAuthor BA
--INNER JOIN Author A
--ON A.AuthorID = BA.AuthorID
--GROUP BY A.AuthorName