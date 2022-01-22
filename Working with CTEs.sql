SELECT OrderYear,COUNT(*)AS SalesCount
FROM(
SELECT YEAR(OrderDate) AS OrderYear,SalesOrderID
FROM Sales.SalesOrderHeader
)SalesDetails
WHERE OrderYear='2006'
GROUP BY OrderYear
GO
-------
WITH SalesDetails
AS(
SELECT YEAR(OrderDate)AS OrderYear,SalesOrderID
FROM Sales.SalesOrderHeader
)

SELECT OrderYear,COUNT(*)AS SalesOrderID
FROM SalesDetails
WHERE OrderYear='2006'
GROUP BY OrderYear
GO

SELECT *
FROM(
SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate) AS BirthYear,
YEAR(HireDAte)AS HireYear
FROM HumanResources.Employee
)AS HR_Emp
WHERE HireYear>=2004
GO


WITH HR_EMP
AS(SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate) 
AS BirthYear,YEAR(HireDate) AS HireYear 
FROM HumanResources.Employee)

SELECT *
FROM HR_EMP
WHERE HireYear >=2005