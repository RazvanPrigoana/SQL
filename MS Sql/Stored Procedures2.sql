CREATE PROCEDURE SelectProductsPricePerUnit @UnitPrice money, @UnitPrice2 money
AS
SELECT *
FROM Products
WHERE  UnitPrice BETWEEN @UnitPrice AND @UnitPrice2