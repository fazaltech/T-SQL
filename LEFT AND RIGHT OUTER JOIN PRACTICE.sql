
--Q1
SELECT
SP.BusinessEntityID,
SP.SalesYTD,
ST.Name AS [Territory	Name]
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SP.TerritoryID

--Q2
SELECT
P.FirstName,
P.LastName,
SP.BusinessEntityID,
SP.SalesYTD,
ST.Name AS [Territory	Name]
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SP.TerritoryID
INNER JOIN Person.Person P
ON P.BusinessEntityID = SP.BusinessEntityID
WHERE ST.Name IN ('Northeast', 'Central')

--Q3
SELECT
P.Name,
P.ListPrice,
SC.Name AS ProductSubcategoryName,
C.Name AS ProductCategoryName
FROM Production.Product P
LEFT OUTER JOIN Production.ProductSubcategory SC
ON SC.ProductSubcategoryID = P.ProductSubcategoryID
LEFT OUTER JOIN Production.ProductCategory C
ON C.ProductCategoryID = SC.ProductCategoryID
ORDER BY ProductCategoryName DESC, ProductSubcategoryName ASC