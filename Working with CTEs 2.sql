SELECT SalesCurrentYear.SalesYear,
SalesCurrentYear.TotalSales AS AnnualSales,
SalesPriorYear.TotalSales AS PriorYearSales
FROM
(
SELECT YEAR(OrderDate)AS SalesYear, SUM(TotalDue) AS TotalSales 
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
)AS SalesCurrentYear
LEFT OUTER JOIN
(
SELECT YEAR(OrderDate) AS SalesYear,SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
)AS SalesPriorYear
ON SalesCurrentYear.SalesYear-1=SalesPriorYear.SalesYear
ORDER BY 1
GO

WITH SalesByYear
AS(
SELECT YEAR(OrderDate) AS SalesYear,SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
)

SELECT
CurrentYearSales.SalesYear,
CurrentYearSales.TotalSales AS AnnualSales,
PriorYearSales.TotalSales AS PriorYearSales
FROM SalesByYear CurrentYearSales
LEFT OUTER JOIN SalesByYear AS PriorYearSales
ON CurrentYearSales.SalesYear-1=PriorYearSales.SalesYear
ORDER BY 1