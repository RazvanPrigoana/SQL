CREATE PROCEDURE LowUnitsInStock @UnistInStock smallint
AS
SELECT *
FROM Products
WHERE UnitsInStock < @UnistInStock