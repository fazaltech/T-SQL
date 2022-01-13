SELECT GETDATE()

SELECT SYSDATETIME()

--Return the difference between two date values, in years
SELECT  DATEDIFF(YEAR,'7/1/1925','7/1/1927')


--Return the difference between two date values, in months
SELECT  DATEDIFF(MM,'7/1/1925','7/1/1927')


--Return the difference between two time values, in hour
SELECT  DATEDIFF(HOUR,'7/1/1925 16:14:00','7/1/1925 22:14:00')


--Return the ADDED DATE BY DAYS
SELECT DATEADD(DAY,30,'4/7/2011')
SELECT DATEADD(DAY,30,GETDATE())


--Return the ADDED DATE BY WEEKS
SELECT DATEADD(WK,3,GETDATE())
SELECT DATEADD(WK,+3,'12/30/2021')
