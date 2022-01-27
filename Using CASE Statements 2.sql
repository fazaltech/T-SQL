SELECT TOP 100 *
FROM Person.Person
GO

SELECT 
MiddleName,
COALESCE(MiddleName,' ')AS CoalescedMiddleName,
CASE 
WHEN MiddleName IS NULL THEN ''
ELSE MiddleName
END AS CasedMiddleName
FROM Person.Person
GO

WITH CustomerSales
AS(
SELECT P.BusinessEntityID,
SUM(SOH.TotalDue)AS TotalSalesAmount
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer SC
ON SC.CustomerID=SOH.CustomerID
INNER JOIN Person.Person P
ON P.BusinessEntityID=SC.PersonID
GROUP BY P.BusinessEntityID
),
CustomerSalesRange AS(
SELECT
	P.FirstName+' '+P.LastName AS CustomerName,
	CASE 
	WHEN CS.TotalSalesAmount BETWEEN 0 AND 149.99 THEN 'Under $150'
	WHEN CS.TotalSalesAmount BETWEEN 150 AND 499.99 THEN '$150 - $499.99'
	WHEN CS.TotalSalesAmount BETWEEN 500 AND 999.99 THEN '$500 - $999.99'
	WHEN CS.TotalSalesAmount BETWEEN 1000 AND 4999.99 THEN '$1,000 - $4,999.99'
	WHEN CS.TotalSalesAmount BETWEEN 5000 AND 14999.99 THEN '$5,000 - $14,999.99'
	ELSE 'Over $15000'
	END AS SalesRange
FROM CustomerSales CS
INNER JOIN Person.Person P
ON P.BusinessEntityID=CS.BusinessEntityID
)
SELECT SalesRange,COUNT(*)AS [Customer In Range]
FROM CustomerSalesRange
GROUP BY SalesRange
ORDER BY CASE
		WHEN SalesRange='Under $150'THEN 1
		WHEN SalesRange='$150 - $499.99'THEN 2
		WHEN SalesRange='$500 - $999.99'THEN 3
		WHEN SalesRange='$1,000 - $4,999.99'THEN 4
		WHEN SalesRange='$5,000 - $14,999.99'THEN 5
		ELSE 6
		END
GO


WITH CustomerSales
AS(
SELECT P.BusinessEntityID,
SUM(SOH.TotalDue)AS TotalSalesAmount
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer SC
ON SC.CustomerID=SOH.CustomerID
INNER JOIN Person.Person P
ON P.BusinessEntityID=SC.PersonID
GROUP BY P.BusinessEntityID
),
CustomerSalesRange AS(
SELECT
	P.FirstName+' '+P.LastName AS CustomerName,
	CASE 
	WHEN CS.TotalSalesAmount BETWEEN 0 AND 149.99 THEN 'Under $150'
	WHEN CS.TotalSalesAmount BETWEEN 150 AND 499.99 THEN '$150 - $499.99'
	WHEN CS.TotalSalesAmount BETWEEN 500 AND 999.99 THEN '$500 - $999.99'
	WHEN CS.TotalSalesAmount BETWEEN 1000 AND 4999.99 THEN '$1,000 - $4,999.99'
	WHEN CS.TotalSalesAmount BETWEEN 5000 AND 14999.99 THEN '$5,000 - $14,999.99'
	ELSE 'Over $15000'
	END AS SalesRange
FROM CustomerSales CS
INNER JOIN Person.Person P
ON P.BusinessEntityID=CS.BusinessEntityID
)
SELECT SalesRange,COUNT(*)AS [Customer In Range]
FROM CustomerSalesRange
GROUP BY SalesRange

GO


SELECT
FirstName,
LastName,
EmailPromotion,
CASE
WHEN EmailPromotion = 0 THEN 'Promotion 1'
WHEN EmailPromotion = 1 THEN 'Promotion 2'
WHEN EmailPromotion = 2 THEN 'Promotion 3'
END AS PromotionName
FROM Person.PersonGOSELECT
CASE
WHEN LEN(FirstName) >= 10 THEN 'Long Name'
ELSE 'Short Name'
END AS [Name Lenght]
FROM Person.PersonORDER BY CASE
WHEN LEN(FirstName) >= 10 THEN 1
ELSE 2
END
GOWITH NameLenght
AS(
SELECT
CASE
WHEN LEN(FirstName) >= 10 THEN 'Long Name'
ELSE 'Short Name'
END AS [Name Lenght]
FROM Person.Person
)
SELECT *
FROM NameLenght
ORDER BY CASE
WHEN [Name Lenght]= 'Long Name' THEN 2
ELSE 1
END
GO


WITH SalesRanges
AS (
SELECT
CASE
WHEN TotalDue BETWEEN 0 AND 149.99
THEN '$0 to $149.99'
WHEN TotalDue BETWEEN 150 AND 499.99
THEN '$150 to $499.99'
WHEN TotalDue BETWEEN 500 AND 4999.99
THEN '$500 to $4,999.99'
WHEN TotalDue BETWEEN 5000 AND 24999.99
THEN '$5,000 to $24,999.99'
ELSE 'Over $25,000'
END AS SalesPriceRange,
SalesOrderID
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL
)
SELECT
SalesPriceRange,
COUNT(*)AS SalesCount
FROM SalesRanges
GROUP BY SalesPriceRange
GO

SELECT
CASE
WHEN Color IS NULL THEN 'No Color'
ELSE Color
END AS Color
FROM Production.Product

----
SELECT
COALESCE(Color, 'No Color')
FROM Production.Product



