SELECT ProductID,ListPrice,
CASE
	WHEN ListPrice>100 THEN 'Expensive Product'
	ELSE 'Inexpensive Product'
END AS ProductPriceClass
FROM Production.Product
WHERE ListPrice <>0
ORDER BY ListPrice
GO

WITH CustomerAges
AS (
SELECT P.FirstName,P.LastName,
FLOOR(DATEDIFF(DAY,PD.BirthDate,GETDATE())/365.25)AS Age
FROM Sales.vPersonDemographics PD
INNER JOIN Person.Person P
ON P.BusinessEntityID=PD.BusinessEntityID
)
SELECT *,
CASE 
	WHEN Age IS NULL THEN'Unknow Age'
	WHEN Age  BETWEEN 0 AND 17 THEN 'Under 18'
	WHEN Age  BETWEEN 18 AND 24 THEN '18 to 24'
	WHEN Age  BETWEEN 25 AND 34 THEN '25 to 34'
	WHEN Age  BETWEEN 35 AND 49 THEN '35 to 49'
	WHEN Age  BETWEEN 50 AND 64 THEN '50 to 64'
	ELSE 'Over 65'
	END AS AgeRange
FROM CustomerAges
GO

WITH CustomerAges
AS (
SELECT P.FirstName,P.LastName,
FLOOR(DATEDIFF(DAY,PD.BirthDate,GETDATE())/365.25)AS Age
FROM Sales.vPersonDemographics PD
INNER JOIN Person.Person P
ON P.BusinessEntityID=PD.BusinessEntityID
),
CustomerAgeRanges AS(
SELECT *,
CASE 
	WHEN Age IS NULL THEN'Unknow Age'
	WHEN Age  BETWEEN 0 AND 17 THEN 'Under 18'
	WHEN Age  BETWEEN 18 AND 24 THEN '18 to 24'
	WHEN Age  BETWEEN 25 AND 34 THEN '25 to 34'
	WHEN Age  BETWEEN 35 AND 49 THEN '35 to 49'
	WHEN Age  BETWEEN 50 AND 64 THEN '50 to 64'
	ELSE 'Over 65'
	END AS AgeRange
FROM CustomerAges)
SELECT AgeRange,Count(*)AS Customer_Count
FROM CustomerAgeRanges
GROUP BY AgeRange
ORDER BY 1
GO


WITH CustomerAges1
AS (
SELECT P.FirstName,P.LastName,
FLOOR(DATEDIFF(DAY,PD.BirthDate,GETDATE())/365.25)AS Age
FROM Sales.vPersonDemographics PD
INNER JOIN Person.Person P
ON P.BusinessEntityID=PD.BusinessEntityID
)
SELECT 
CASE 
	WHEN Age IS NULL THEN'Unknow Age'
	WHEN Age  BETWEEN 0 AND 17 THEN 'Under 18'
	WHEN Age  BETWEEN 18 AND 24 THEN '18 to 24'
	WHEN Age  BETWEEN 25 AND 34 THEN '25 to 34'
	WHEN Age  BETWEEN 35 AND 49 THEN '35 to 49'
	WHEN Age  BETWEEN 50 AND 64 THEN '50 to 64'
	ELSE 'Over 65'
	END AS AgeRange,COUNT (*)AS Customer_Count
FROM CustomerAges1
GROUP BY
CASE 
	WHEN Age IS NULL THEN'Unknow Age'
	WHEN Age  BETWEEN 0 AND 17 THEN 'Under 18'
	WHEN Age  BETWEEN 18 AND 24 THEN '18 to 24'
	WHEN Age  BETWEEN 25 AND 34 THEN '25 to 34'
	WHEN Age  BETWEEN 35 AND 49 THEN '35 to 49'
	WHEN Age  BETWEEN 50 AND 64 THEN '50 to 64'
	ELSE 'Over 65'
	END 
	
ORDER BY 1
GO

SELECT
	PD.BusinessEntityID,
	P.FirstName,
	P.LastName,
	CASE
	WHEN PD.Gender ='M'THEN 'Male'
	WHEN PD.Gender ='F'THEN 'Female'
	ELSE 'No Gender Specified'
	END AS GenderVale
FROM Sales.vPersonDemographics PD
INNER JOIN Person.Person P
ON P.BusinessEntityID=PD.BusinessEntityID