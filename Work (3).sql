--1. Afisati produsele care sunt in categoria 1 si in categoria 3. Se folosesc tabelele Product, ProductSubcategory si ProductCategory.
SELECT p.Name FROM Production.Product p
JOIN PRODUCTION.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
--JOIN PRODUCTION.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID
WHERE ps.ProductSubcategoryID = 1
UNION
SELECT p.Name FROM Production.Product p
JOIN PRODUCTION.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
--JOIN PRODUCTION.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID
WHERE ps.ProductSubcategoryID = 3;

--2. Afisati in acelasi set de date numele produselor si numele modelelor de produse.
SELECT p.Name FROM Production.Product p
LEFT JOIN PRODUCTION.ProductCategory pc ON p.ProductID = pc.ProductCategoryID
UNION ALL
SELECT pps.Name FROM Production.ProductSubcategory pps
LEFT JOIN PRODUCTION.ProductCategory pc ON pps.ProductCategoryID = pc.ProductCategoryID


/*3. In acelasi set de date, afisati ProductId, nume produs, pret de lista din tabela Product pt preturile de lista > 1000 si ProductModelID, nume model si 
coloana fictiva 'DummyPrice' cu valoarea default 0.00 din tabela ProductModel pt ProductModelId < 10.*/
SELECT ProductID, Name, ListPrice FROM Production.Product
WHERE ListPrice > 1000
UNION
SELECT ProductModelID, Name, 0.00 AS 'DummyPrice' FROM Production.ProductModel
WHERE ProductModelId < 10



--4. Afisati in acelasi set de date produsele distincte care incep cu H si separat, produsele care se termina cu k.
SELECT Distinct p.Name FROM Production.Product p
LEFT JOIN PRODUCTION.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE p.Name LIKE 'H%'
UNION
SELECT Distinct p.Name FROM Production.Product p
LEFT JOIN PRODUCTION.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE p.Name LIKE 'K%'


--5. Afisati in acelasi set de date Categoriile si Modelele produselor care incep cu 'Road%'. Excludeti null-urile.
SELECT p.ProductID FROM Production.Product p
JOIN Production.ProductSubcategory pps ON p.ProductSubcategoryID = pps.ProductSubcategoryID
WHERE p.Name LIKE 'Road%'
UNION
SELECT p.ProductModelID FROM Production.Product p
JOIN Production.ProductModel ppm ON p.ProductModelID = ppm.ProductModelID
WHERE p.Name LIKE 'Road%'
ORDER BY p.ProductID

--6. Afisati in acelasi set de date numele si descrierea produselor (din tabela ProductDescription) care au ProductModelProductDescriptionCulture.CultureID = 'en'.
SELECT pp.Name FROM Production.Product pp
LEFT JOIN Production.ProductModel pm ON pp.ProductModelID = pm.ProductModelID
UNION
SELECT pm.Name FROM Production.ProductModel pm
JOIN Production.ProductModelProductDescriptionCulture pdc ON pm.ProductModelID = pdc.ProductModelID
UNION
SELECT pd.Description FROM Production.ProductDescription pd
JOIN Production.ProductModelProductDescriptionCulture pdc ON pd.ProductDescriptionID = pdc.ProductDescriptionID
WHERE pdc.CultureID = 'en'


/*7. Afisati combinat SalesOrderId din SalesOrderHeader si SalesOrderDetailID din SalesOrderDetail. Adaugati coloana Source care sa ia valoarea Order pt inregistrarile din SalesOrderHeader si 
'Line Item' pt cele din SalesOrderDetail.*/
SELECT SalesOrderId, 'Order' AS Source FROM Sales.SalesOrderHeader
UNION
SELECT SalesOrderDetailID, 'Line Item' AS Source FROM Sales.SalesOrderDetail

--8. Afisati SalesOrderID-urile din Sales.SalesOrderDetail care au cantitatea comandata > 2 si TotalDue din Sales.SalesOrderHeader < 1000$.
SELECT SalesOrderId FROM Sales.SalesOrderDetail
WHERE OrderQty > 2
UNION
SELECT SalesOrderId FROM Sales.SalesOrderHeader
WHERE TotalDue < 1000