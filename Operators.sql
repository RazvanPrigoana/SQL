/* Query 1*/
--Returnati numele produsului, cantitatea si pretul unitar pt toate produsele comandate, ordonate descrescator dupa numele produsului.

SELECT ProductName, QuantityPerUnit, UnitPrice
FROM Products
ORDER BY ProductName DESC

/* Query 2
Returnati numele produsului, cantitatea si pretul unitar pt produsele care au cel putin 10 unitati in stoc
si pretul unitar este mai mic de 30 de dolari, ordonate dupa numele produsului si pretul unitar*/

SELECT ProductName, QuantityPerUnit, UnitPrice
FROM Products
WHERE UnitsInStock >= 10 AND UnitPrice < 30
ORDER BY ProductName, UnitPrice

/*Query 3
Returnati numele celui mai tanar angajat*/

SELECT FirstName, LastName
FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) AS BirthDate FROM Employees)

/*SAU Cel mai batran*/

SELECT FirstName, LastName
FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) AS BirthDate FROM Employees)

SELECT LastName
FROM Employees
WHERE BirthDate = '1966-01-27'

/* Query 4
Returnati prenumele si numele angajatilor cu titlul Sales Representative si Sales Manager*/
 SELECT FirstName, LastName, Title
 FROM Employees
 WHERE Title IN ('Sales Representative','Sales Manager')

 /* SAU */
 SELECT FirstName, LastName, Title
 FROM Employees
 WHERE Title = 'Sales Representative' OR Title ='Sales Manager'

 /*Query 5
 Returnati toti angajatii care nu sunt din Londra, ordonati dupa titlu crescator si prenume descrescator*/

 SELECT *
 FROM Employees
 WHERE City != 'London'
 ORDER BY Title, FirstName DESC

 /* SAU */

 SELECT *
 FROM Employees
 WHERE City <> 'London'
 ORDER BY Title, FirstName DESC

 /* Query 6
 Returnati orasul, numele companiei si numele de contact ale tuturor clientilor care se afla in orase care incep cu "A" sau "B", ordonati dupa numele de contact descendent*/

 SELECT City, CompanyName, ContactName
 FROM Customers
 WHERE City LIKE 'A%' OR City LIKE 'B%'
 ORDER BY ContactName DESC

 /* Query 7
 Returnati numele si prenumele tuturor angajatilor ale caror nume incepe cu o litera intre "J" si "M"*/

 SELECT FirstName, LastName
 FROM Employees
 WHERE FirstName LIKE '[J-M]%'

 /* Query 8
 Returnati primii 5 clienti distincti intr-o coloana denumita "Customers"*/

 SELECT DISTINCT TOP (5) ContactName AS Customers
 FROM Customers

 /* Query 9
 Returnati produsele cu pret cuprins intre 10$ si 20$*/

 SELECT *
 FROM Products
 WHERE  UnitPrice BETWEEN 10 AND 20

 /* Query 10
 Returnati toate numele companiilor si numele de contact pt care clientii se afla in Buenos Aires*/

 SELECT CompanyName, ContactName, City
 FROM Customers
 WHERE City = 'Buenos Aires'

 /* Query 11
 Returnati data comenzii, data expedierii, ID-ul clientului, pt comenzile plasate pe 19 mai 1995*/

 SELECT OrderDate, ShippedDate, CustomerID
 FROM Orders
 WHERE OrderDate = '1995-05-19'

 /* Query 12
 Returnati numele, prenumele si tara tuturor angajatilor care nu se afla in Statele Unite*/

 SELECT FirstName, LastName, Country
 FROM Employees
 WHERE Country != 'USA'

 /* Query 13
 Returnati ID-ul angajatului, ID-ul comenzii, ID-ul clientului, required date si shipped date a tuturor comenzilor care au fost expediate mai tarziu decat au fost solicitate*/

 SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
 FROM Orders
 WHERE ShippedDate > RequiredDate

 /* Query 14
 Returnati numele produsului, unitatile in stoc, unitatile pe comanda si reorder level a tuturor produselor care sunt disponibile pt recomanda*/

 SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
 FROM Products
 WHERE ReorderLevel <> 0

 /* Query 15
 Returnati numele companiei, numele de contact, numarul de fax al tuturor clientilor care au un numar de fax*/

 SELECT CompanyName, ContactName, Fax
 FROM Customers
 WHERE Fax IS NOT NULL

 /* Query 16
 Returnati numele si prenumele tuturor angajatilor care nu raporteaza nimanui */

 SELECT FirstName, LastName
 FROM Employees
 WHERE ReportsTo IS NOT NULL

 /* Query 17
 Returnati numele companiei, numele contactului, si numarul de fax al tuturor clientilor care au un numar de fax. Sortati dupa numele companiei*/

 SELECT CompanyName, ContactName, Fax
 FROM Customers
 WHERE Fax IS NOT NULL
 ORDER BY CompanyName

 /* Query 18 - Functions
 Returnati numarul de produse din fiecare categorie, gurpate dupa numele categoriei */

 SELECT SUM(Products.UnitsInStock) AS NumarProduse, Categories.CategoryName
 FROM Products
 INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
 WHERE Products.CategoryID = Categories.CategoryID
 GROUP BY Categories.CategoryName

  /* Query 19 - Functions
 Returnati numarul de tipuri de produse din fiecare categorie, gurpate dupa numele categoriei */

 SELECT COUNT(*) AS NumarProduse, Categories.CategoryName
 FROM Products
 INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
 GROUP BY Categories.CategoryName
 
 /* Query 20 - Functions
 Returnati numarul de clienti din fiecare tara, daca numarul clientilor din tara respectiva este mai mare decat 5 */

 SELECT COUNT(ContactName) AS NumarClientiPerTara, Country
 FROM Customers
 GROUP BY Country
 HAVING COUNT(ContactName) > '5'