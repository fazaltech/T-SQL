--The SQL Coalesce and IsNull functions are used to handle NULL values. 

SELECT TOP 100
			FirstName, COALESCE(MiddleName,'')AS MiddleName,LastName
FROM Person.Person

SELECT BillToAddressID,ShipToAddressID,
COALESCE(NULLIF(BillToAddressID,ShipToAddressID),1)
FROM Sales.SalesOrderHeader



--1) If the Title column of Person.Person is NULL then return the string “No Title Listed”.

SELECT
Title,COALESCE(Title, 'No Title Listed') AS Title
FROM Person.Person

--2) If the MiddleName column of Person.Person is NULL then return the string “No Middle Name Listed”.

SELECT
MiddleName,COALESCE(MiddleName, 'No Middle Name Listed') AS MiddleName
FROM Person.Person

