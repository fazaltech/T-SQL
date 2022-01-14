--The SQL Coalesce and IsNull functions are used to handle NULL values. 

SELECT TOP 100
			FirstName, COALESCE(MiddleName,'')AS MiddleName,LastName
FROM Person.Person