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
