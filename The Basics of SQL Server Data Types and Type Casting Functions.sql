SELECT GETDATE(),CAST(GETDATE() AS DATE)AS Casted_Date


SELECT GETDATE(),CONVERT (DATE,GETDATE())AS Type_Casted_Date

SELECT TOP 100 FirstName FROM Person.Person

--Conversion failed when converting the nvarchar value 'Syed' to data type int.

SELECT TOP 100 CAST(FirstName AS INT) FROM Person.Person
