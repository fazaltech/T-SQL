SELECT MAX(TotalDue)
FROM Sales.SalesOrderHeader


--
SELECT TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC

--
SELECT COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
--

SELECT COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL


SELECT COUNT(FirstName)
From Person.Person


SELECT COUNT(DISTINCT FirstName)
From Person.Person


SELECT TOP 100 *
FROM Sales.SalesOrderHeader


SELECT SUM(TotalDue)
From Sales.SalesOrderHeader



SELECT AVG(TotalDue)
From Sales.SalesOrderHeader

SELECT COUNT(TotalDue)
From Sales.SalesOrderHeader