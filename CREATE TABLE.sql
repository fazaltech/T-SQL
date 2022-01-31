CREATE TABLE TestTable(
Column_A VARCHAR(100),
Column_B INT,
Column_C DATETIME,
Column_D VARCHAR(50),
)

INSERT INTO TestTable(Column_A,Column_B,Column_C,Column_D)
VALUES ('Test Value',10,GETDATE(),'Test VAL'),
		('Test Value 2',11,GETDATE(),'Test VAL 2')


INSERT INTO TestTable
SELECT FirstName,BusinessEntityID,GETDATE(),PhoneNumberType FROM HumanResources.vEmployee

SELECT * FROM TestTable


UPDATE TestTable
SET Column_B=999
WHERE Column_A='Test Value'


SELECT * FROM TestTable WHERE Column_A='Test Value'