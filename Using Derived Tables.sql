SELECT * FROM (SELECT BusinessEntityID,FirstName,LastName FROM Person.Person) AS PersonName


SELECT YEAR(OrderDate) AS OrderYear,COUNT(*) AS SalesCount FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate)='2006'

GROUP BY YEAR(OrderDate)


SELECT OrderYear,COUNT(*) AS SalesCount FROM(SELECT YEAR(OrderDate) AS OrderYear,SalesOrderID FROM Sales.SalesOrderHeader)AS SalesDetails
WHERE OrderYear=2006
GROUP BY OrderYear


SELECT *
FROM (SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate)AS BirthYear,YEAR(HireDate)AS HireYear FROM HumanResources.Employee) AS HR_Employee
WHERE BirthYear < 1960


SELECT *
FROM (SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate)AS BirthYear,YEAR(HireDate)AS HireYear FROM HumanResources.Employee) AS HR_Employee
WHERE HireYear >= 2004


SELECT *
FROM(
	SELECT BusinessEntityID,NationalIDNumber,BirthYear,YEAR(HireDate) HireYear 
	FROM(SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate) AS BirthYear,HireDate FROM HumanResources.Employee
	)AS InterNested)AS OuterNested
	


SELECT *
FROM(
	SELECT BusinessEntityID,NationalIDNumber,BirthYear,YEAR(HireDate) HireYear 
	FROM(SELECT BusinessEntityID,NationalIDNumber,YEAR(BirthDate) AS BirthYear,HireDate FROM HumanResources.Employee
	)AS InterNested
	WHERE BirthYear >1960
	)AS OuterNested
	WHERE HireYear >2003




SELECT Sales_by_Year.SalesYear,Sales_by_Year.TotalRevenue,Hire_by_Year.NewHireCount
FROM(SELECT SalesYear, SUM(TotalDue) AS TotalRevenue
	FROM (SELECT YEAR(OrderDate) AS SalesYear,TotalDue FROM Sales.SalesOrderHeader)AS SalesDetails
GROUP BY SalesYear
)AS Sales_by_Year
LEFT OUTER JOIN(SELECT HireYear,COUNT(BusinessEntityID)AS NewHireCount
	FROM(SELECT YEAR(HireDate) AS HireYear,BusinessEntityID
	FROM HumanResources.Employee)AS EmployeeDetails
	GROUP BY HireYear
)AS Hire_by_Year
ON Hire_by_Year.HireYear = Sales_by_Year.SalesYear
ORDER BY 1



1) Will the following query execute properly? Why or why not?

SELECT *
FROM (
SELECT P.BusinessEntityID, P.FirstName, P.LastName, YEAR(E.HireDate)
FROM HumanResources.Employee E
INNER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
) AS EmployeeDetails

--Error:
--No column name was specified for column 4 of 'EmployeeDetails'.
