SELECT P.Name ,P.ProductNumber,PS.Name AS [ProductSubCategory Name]
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID=PS.ProductSubcategoryID

SELECT *
FROM Production.ProductSubcategory