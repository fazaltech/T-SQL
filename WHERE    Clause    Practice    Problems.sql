 SELECT *  FROM Production.Product WHERE ListPrice <>10 --NOT EQUAL--


 SELECT * FROM HumanResources.vEmployee WHERE FirstName<>'Chris'

 SELECT * FROM HumanResources.Employee WHERE BirthDate >='1/1/1980'

 SELECT * FROM HumanResources.Employee WHERE BirthDate <'1/1/1980'

 SELECT * FROM HumanResources.Employee WHERE BirthDate  >='1/1/1980' AND Gender ='F'

  SELECT * FROM HumanResources.Employee WHERE MaritalStatus='S' AND Gender='M'

  SELECT * FROM HumanResources.Employee WHERE MaritalStatus='S' OR Gender='M'

  SELECT * FROM HumanResources.Employee WHERE MaritalStatus='S' AND (Gender='M' OR OrganizationLevel=4)


  SELECT *
  FROM Production.Product
  WHERE ListPrice >100 AND Color ='Red' OR StandardCost >30 

SELECT *
FROM Production.Product
WHERE ListPrice >100 AND (Color ='Red' OR StandardCost >30 )

SELECT * FROM HumanResources.vEmployeeDepartment
WHERE Department ='Research and Development' OR (StartDate <'1/1/2005'
AND Department='Executive')

SELECT *
FROM Sales.vStoreWithDemographics
WHERE (AnnualSales >1000000 AND BusinessType='OS')OR
		(
		YearOpened < 1990 AND SquareFeet >40000 AND NumberEmployees >10
		)


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName='Chris' OR FirstName='Steve' OR FirstName='Michael' OR FirstName='Thomas'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName IN ('Chris','Steve','Michael','Thomas')

SELECT *
FROM Sales.vStoreWithDemographics
WHERE AnnualSales >=1000000 AND AnnualSales <=2000000

SELECT *
FROM Sales.vStoreWithDemographics
WHERE AnnualSales BETWEEN 1000000 AND 2000000


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'Mi%'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'Mi_'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%s'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%h%'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE '_on'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a,o]n'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a-f,r-z]n'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[^o]n'


SELECT *
FROM HumanResources.vEmployee
WHERE MiddleName IS NULL

SELECT *
FROM HumanResources.vEmployee
WHERE MiddleName IS NOT NULL

SELECT *
FROM HumanResources.vEmployee
WHERE MiddleName IS NOT NULL AND PhoneNumberType ='Cell'


---Q1--

SELECT FirstName,LastName
FROM HumanResources.vEmployee
WHERE FirstName='Mark'

---Q2--

SELECT TOP 100 *
FROM Production.Product
WHERE ListPrice <> 0.00

---Q3--

SELECT *
FROM HumanResources.vEmployee
WHERE LastName < 'D'

---Q4--

SELECT *
FROM Person.StateProvince
WHERE CountryRegionCode ='CA'



---Q5--

SELECT FirstName AS 'Customer First Name',LastName AS 'Customer Last Name'
FROM HumanResources.vEmployee
WHERE LastName='Smith'

---Q6--

SELECT *
FROM Sales.vIndividualCustomer
WHERE CountryRegionName = 'Australia' OR(PhoneNumberType ='Cell' AND EmailPromotion =0)

---Q7--P1

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE Department IN ('Executive','Tool Design','Engineering')

---Q7--P2

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE Department ='Executive'OR Department ='Tool Design' OR Department ='Engineering'


---Q8--P1

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE StartDate BETWEEN '1/7/2000' AND '1/6/2002'

---Q8--P2

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE StartDate >='1/7/2000' AND StartDate <='1/6/2002'

---Q9--

SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName Like 'r%'

---Q10--

SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName Like '%r'


---Q11--

SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName IN('Lopez','Martin','Wood') AND LastName LIKE '%[C-Z]'


---Q12--

SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL

---Q13--

SELECT SalesPersonID,TotalDue
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL 
AND TotalDue >70000