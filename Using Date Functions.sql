SELECT GETDATE()

SELECT SYSDATETIME()

--Return the difference between two date values, in years
SELECT  DATEDIFF(YEAR,'7/1/1925','7/1/1927')


--Return the difference between two date values, in months
SELECT  DATEDIFF(MM,'7/1/1925','7/1/1927')


--Return the difference between two time values, in hour
SELECT  DATEDIFF(HOUR,'7/1/1925 16:14:00','7/1/1925 22:14:00')