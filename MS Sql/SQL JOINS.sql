/* Query 1 - UNION*/

SELECT City
FROM Customers
UNION
SELECT City
FROM Suppliers

/* Query 2 - INNER JOIN
Returnati toti clientii care au plasat comenzi*/

SELECT *
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID

/* Query 3 - INNER JOIN
Returnati ID-ul clientului si numarul produselor comandate intre intai martie 1995 si 31 martie 1998 pe o coloana denumita "Numar_Produse_Comandate" si ordonati datele dupa ID-ul clientului*/

SELECT Orders.CustomerID, Sum (Quantity) AS Numar_Produse_Comandate
FROM [Order Details]
INNER JOIN Orders ON Orders.OrderID = [Order Details].OrderID
WHERE Orders.OrderDate >= '1995-03-01' AND Orders.OrderDate <= '1998-03-31'
GROUP BY Orders.CustomerID

/* Query 4 - RIGHT JOIN
Returnati ID-ul comenzii si numele angajatului care a procesat comanda*/

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID

/* Query 5 - LEFT JOIN
Returnati numele de contact al clientului si ID-ul comenzii pe care a plasat-*/

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName

/* Query 5 - FULL JOIN
Returnati numele de contact al clientului si ID-ul comenzii pe care a plasat-*/

SELECT  Customers.ContactName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName

/* Query 6
Returnati numele produsului si pretul, pt produsul cu cel mai mare pret din lista vanduta inclusiv dupa 1995-04-01*/

SELECT DISTINCT Products.ProductName , Products.UnitPrice
FROM Products
INNER JOIN [Order Details] ON [Order Details].ProductID = Products.ProductID
INNER JOIN Orders ON Orders.OrderID = [Order Details].OrderID
WHERE Products.UnitPrice = (SELECT MAX (UnitPrice) FROM Products) AND Orders.OrderDate >= '1995-04-01'

--SAU

SELECT [Product Sales for 1995].ProductName , UnitPrice
FROM [Product Sales for 1995]
RIGHT JOIN Products ON [Product Sales for 1995].ProductName = Products.ProductName
WHERE UnitPrice = (SELECT MAX (UnitPrice) FROM Products)

/* Query 7
Returnati numarul de comenzi plasate in martie 1995 pt fiecare client, ordoneaza dupa ID-ul clientului.*/

SELECT Orders.CustomerID, COUNT(*) AS NumarComenzi
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate BETWEEN '1995-03-01' AND '1995-03-31'
GROUP BY ORDERS.CustomerID

SELECT Orders.CustomerID, COUNT(Orders.OrderID) AS NumarComenzi
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate >= '1995-03-01' AND Orders.OrderDate <= '1995-03-31'
GROUP BY ORDERS.CustomerID

/* Query 8
Returnati produsele care nu au fost comandate*/

SELECT *
FROM Products
INNER JOIN [Order Details] ON [Order Details].ProductID = Products.ProductID
WHERE OrderID IS NULL

--SAU

SELECT *
FROM Products
INNER JOIN [Order Details] ON [Order Details].ProductID = Products.ProductID
WHERE Products.ProductID NOT IN (SELECT ProductID FROM [Order Details])