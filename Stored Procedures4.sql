CREATE PROCEDURE OrdersDateCheck @OrderDateIN datetime, @OrderDateOUT datetime
AS
SELECT *
FROM Orders
WHERE OrderDate BETWEEN @OrderDateIN AND @OrderDateOUT