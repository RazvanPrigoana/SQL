--1. Implementați paginația pentru afișarea produselor din tabelul `Sales.Produs`, cu 5 produse pe pagină, utilizând un parametru pentru numărul paginii.
SELECT * FROM Sales.ProdusORDER BY id_produsOFFSET 5 ROWS FETCH NEXT 5 ROWS ONLYDECLARE @PageNr INT = 2;DECLARE @PageSize INT = 5;SELECT * FROM Sales.ProdusORDER BY id_produsOFFSET @PageSize*(@pageNr-1) ROWS FETCH NEXT @PageSize ROWS ONLY


--2. Calculați vârsta clienților pe baza unei coloane `DataNastere` adăugate în tabelul `Customer.Client`.
ALTER TABLE Customer.Client ADD DataNastere DATE;

WITH DateNastereCTE AS (
    SELECT *
    FROM (VALUES
        (1, '1923-05-17'),
        (2, '1928-12-02'),
        (3, '1935-07-29'),
        (4, '1939-11-03'),
        (5, '1941-04-15'),
        (6, '1945-06-06'),
        (7, '1949-09-25'),
        (8, '1952-01-11'),
        (9, '1955-03-18'),
        (10, '1958-10-30'),
        (11, '1960-12-19'),
        (12, '1962-08-07'),
        (13, '1965-11-28'),
        (14, '1968-02-14'),
        (15, '1970-04-22'),
        (16, '1972-07-09'),
        (17, '1975-03-03'),
        (18, '1977-10-17'),
        (19, '1979-12-31'),
        (20, '1981-05-05'),
        (21, '1983-06-20'),
        (22, '1985-08-13'),
        (23, '1987-01-29'),
        (24, '1989-04-07'),
        (25, '1990-09-19'),
        (26, '1992-11-10'),
        (27, '1993-07-24'),
        (28, '1994-03-12'),
        (29, '1995-05-25'),
        (30, '1996-10-09'),
        (31, '1997-12-15'),
        (32, '1998-02-28'),
        (33, '1999-07-07'),
        (34, '2000-01-01'),
        (35, '2000-11-23'),
        (36, '2001-03-14'),
        (37, '2001-12-05'),
        (38, '2002-04-30'),
        (39, '2002-08-16'),
        (40, '2003-01-20'),
        (41, '2003-06-11'),
        (42, '2004-02-27'),
        (43, '2004-09-07'),
        (44, '2005-05-19'),
        (45, '2005-11-30'),
        (46, '2006-03-21'),
        (47, '2006-08-08'),
        (48, '2006-12-12'),
        (49, '2007-01-15'),
        (50, '1947-07-03'),
        (51, '1950-10-10'),
        (52, '1953-06-22'),
        (53, '1966-11-01'),
        (54, '1978-09-09'),
        (55, '1988-02-02'),
        (56, '1999-12-12'),
        (59, '2007-02-01')
    ) AS v(ID, DataNastere)
)
UPDATE cc
SET cc.DataNastere = d.DataNastere
FROM MagazinOnline1.Customer.Client cc
JOIN DateNastereCTE d ON cc.ID = d.ID;

SELECT Nume,
		Prenume,
		DATEDIFF(YEAR, DataNastere, GETDATE()) -  
				IIF(
					DATEFROMPARTS(YEAR(GETDATE()), MONTH(DataNastere), DAY(DataNastere)) > GETDATE(),
					1,
					0
					) AS Varsta_client
FROM Customer.Client


--3. Actualizați stocurile produselor din tabelul `Sales.Produs` pe baza cantităților din tabelul `Sales.DetaliiComanda`.
SELECT * FROM Sales.Produs
SELECT * FROM Sales.DetaliiComanda

CREATE PROCEDURE spActualizare_Stoc
@cantitate_comandata INT,
@id_produs INT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE sp SET sp.stoc_produs = sp.stoc_produs - @cantitate_comandata
	FROM Sales.Produs sp
	JOIN Sales.DetaliiComanda sdc ON sp.id_produs = sdc.id_produs
	WHERE @cantitate_comandata = sdc.cantitate AND @id_produs = sdc.id_produs
END

BEGIN TRY
	BEGIN TRANSACTION;
	
	EXEC spActualizare_Stoc 2, 1;

	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION;
END CATCH;


--4. Listați clienții și suma totală cheltuită de fiecare dintre aceștia pe baza comenzilor realizate.
CREATE OR ALTER FUNCTION dbo.TotalAmount
()
RETURNS TABLE
AS
RETURN
(
	SELECT cc.Nume, cc.Prenume, SUM(sc.total)  AS Total_Comanda FROM Customer.Client cc
	JOIN Sales.comanda sc ON cc.ID = sc.id_client
	GROUP BY cc.Nume, cc.Prenume
)

select * from dbo.TotalAmount()



--5. Listați produsele care aparțin unei categorii specifice sau subcategoriilor acesteia utilizând recursivitate.
WITH CategorieRecursiva AS (
    SELECT ID, NumeCategorie, IDParinte
    FROM sales.categorie
    UNION ALL
    SELECT c.ID, c.NumeCategorie, c.IDParinte
    FROM sales.categorie c
    INNER JOIN CategorieRecursiva cr ON c.IDParinte = cr.ID
)
SELECT * FROM CategorieRecursiva;



--6. Identificați produsele cu stoc scăzut, sub un anumit prag specificat.
SELECT * FROM Sales.Produs

CREATE PROCEDURE sp_StocMinim
@stoc_minim INT
AS
BEGIN
	DECLARE @sql NVARCHAR(MAX);

SET @sql = N'SELECT * FROM Sales.Produs WHERE stoc_produs < @stoc_minim';
EXEC sp_executesql @sql,
	N'@stoc_minim INT',
	@stoc_minim = @stoc_minim;
END;


EXEC sp_StocMinim
	@stoc_minim = 5

--sau

create procedure LowStoc
@StocMin int
as
	begin
select nume_produs from Sales.Produs where stoc_produs<@StocMin
end
exec LowStoc 5;
exec LowStoc @StocMin=5;



--7. Afișați comenzile clienților cu detalii despre produsele comandate, cantități și prețuri.
WITH CTE_DetaliiProdusComanda
AS
(
SELECT sdc.id_comanda ,sp.nume_produs, sp.descriere_produs, sp.pret_produs, sdc.cantitate  FROM Sales.Produs sp
JOIN SALES.detaliicomanda sdc ON sp.id_produs = sdc.id_produs
),
CTE_ClientComanda AS
(
SELECT sc.id_comanda, cc.Nume, cc.Prenume FROM Customer.Client cc
JOIN Sales.comanda sc ON cc.ID = sc.id_client
)
SELECT cc.id_comanda, nume, prenume, nume_produs, descriere_produs, pret_produs, cantitate FROM  CTE_ClientComanda cc
JOIN  CTE_DetaliiProdusComanda dpc ON dpc.id_comanda = cc.id_comanda



--8. Determinați cele mai bine vândute 3 produse pe baza cantităților totale vândute.
WITH CTE_TotalCantitateVanduta
AS
(
SELECT sp.nume_produs, SUM(sdc.cantitate) AS Total_Cantitate FROM SALES.Produs sp
JOIN Sales.detaliicomanda sdc ON sp.id_produs = sdc.id_produs
GROUP BY sp.nume_produs
)
SELECT TOP 3 nume_produs, Total_Cantitate FROM CTE_TotalCantitateVanduta
ORDER BY Total_Cantitate DESC

--9. Adăugați o coloană calculată în tabelul `Customer.Client` pentru a calcula automat vârsta clienților.
ALTER TABLE Customer.Client ADD Varsta AS(
	DATEDIFF(YEAR, DataNastere, GETDATE()) -  
				IIF(
					DATEFROMPARTS(YEAR(GETDATE()), MONTH(DataNastere), DAY(DataNastere)) > GETDATE(),
					1,
					0
					)
)


--10. Scrieți o interogare pentru a găsi comenzile cu o valoare totală mai mare decât o sumă specificată.
select * from Sales.comanda
create procedure ComenziMari
@Total decimal(10,2)
as
	begin
select id_comanda from Sales.comanda where Total>@Total
end
exec ComenziMari 1000.00
