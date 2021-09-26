--SELECT [Column 1], [Column 2], ... , [Column N] 
--FROM [Database Name].[Schema Name].[Table Name] 
--WHERE [Column Name] {Comparison Operator} {Filter Criteria} 
--ORDER BY {[Column Name], [Column Alias], [Column Ordinal]} [ASC/DESC]



SELECT FirstName,LastName
FROM Sales.vIndividualCustomer
ORDER BY FirstName


--FOR SECOND COLUMN
SELECT FirstName,LastName
FROM Sales.vIndividualCustomer
ORDER BY 2 


--FOR alias
SELECT FirstName,LastName AS [CUSTOMER LAST NAME]
FROM Sales.vIndividualCustomer
ORDER BY [CUSTOMER LAST NAME] DESC

--SQL QUERY SEQUENCE
--SELECT
--FROM
--WHERE
--GROUP BY
--HAVING
--ORDER BY


--EXCUTION QUERY SEQUENCE
--FROM
--WHERE
--GROUP BY
--HAVING
--SELECT
--ORDER BY

--WRONG QUERY
--SELECT FirstName,LastName AS [CUSTOMER LAST NAME]
--FROM Sales.vIndividualCustomer
--WHERE [CUSTOMER LAST NAME] ='Zimmerman'


SELECT FirstName,LastName
FROM Sales.vIndividualCustomer
ORDER BY 2 DESC


SELECT FirstName,LastName
FROM Sales.vIndividualCustomer
ORDER BY 2 ASC


SELECT FirstName,LastName
FROm Sales.vIndividualCustomer
ORDER BY LastName,FirstName DESC



SELECT FirstName,LastName
FROm Sales.vIndividualCustomer
ORDER BY LastName,FirstName 


--FOR SECOND COLUMN
SELECT FirstName,LastName
FROM Sales.vIndividualCustomer
ORDER BY 2,FirstName 


SELECT FirstName AS [Customer First Name],LastName
FROM Sales.vIndividualCustomer
ORDER BY 2,[Customer First Name]


SELECT LastName,FirstName,SalesQuota
FROM Sales.vSalesPerson


SELECT LastName,FirstName,SalesQuota
FROM Sales.vSalesPerson
WHERE SalesQuota >=250000
ORDER BY SalesQuota DESC,LastName ASC



SELECT LastName,FirstName,SalesQuota AS [Sales Quota]
FROM Sales.vSalesPerson
WHERE SalesQuota >=250000
ORDER BY [Sales Quota] DESC,1 ASC



--Q1--

SELECT FirstName,LastName ,JobTitle
FROM HumanResources.vEmployeeDepartment
ORDER BY FirstName ASC



--Q2--

SELECT FirstName,LastName
FROM HumanResources.vEmployeeDepartment
ORDER BY FirstName ASC,LastName DESC


--Q3--

SELECT FirstName,LastName,CountryRegionName
FROM Sales.vIndividualCustomer
ORDER BY 3


--Q4--


SELECT FirstName,LastName,CountryRegionName
FROM Sales.vIndividualCustomer
WHERE CountryRegionName IN ('United Sates','France')
ORDER BY CountryRegionName ASC


--Q5--

SELECT Name,AnnualSales,YearOpened,SquareFeet AS [Store Size],NumberEmployees AS [Total Employees]
FROM Sales.vStoreWithDemographics
WHERE AnnualSales < 1000000 AND NumberEmployees <45
ORDER BY [Store Size] DESC,[Total Employees] DESC