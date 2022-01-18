--The SQL Coalesce and IsNull functions are used to handle NULL values. 

SELECT TOP 100
			FirstName, COALESCE(MiddleName,'')AS MiddleName,LastName
FROM Person.Person

SELECT BillToAddressID,ShipToAddressID,
COALESCE(NULLIF(BillToAddressID,ShipToAddressID),1)
FROM Sales.SalesOrderHeader
