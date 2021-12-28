SELECT P.NAME,P.ProductNumber,PS.Name AS ProductSubCategoryName
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID =P.ProductSubcategoryID


SELECT P.NAME,P.ProductNumber,PS.Name AS ProductSubCategoryName
FROM Production.Product P
LEFT OUTER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID =P.ProductSubcategoryID

SELECT P.NAME,P.ProductNumber,PS.Name AS ProductSubCategoryName
FROM Production.Product P
RIGHT OUTER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID =P.ProductSubcategoryID


SELECT *
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID=SOH.SalesPersonID


SELECT 
P.FirstName,P.LastName,
SOH.SalesOrderNumber,
SOH.TotalDue AS SalesAmount,
T.Name AS TerritoryName
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
LEFT OUTER JOIN HumanResources.Employee E
ON E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T
ON T.TerritoryID = SOH.TerritoryID