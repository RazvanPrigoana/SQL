-- 1. Listare comenzi clienți:
--    Scrieți un query pentru a afișa numele și prenumele clienților care au plasat o comandă cu un total mai mare decât media totalurilor comenzilor din tabelul `Sales.Comanda`.
WITH TOTAL_AVG_COMANDA
AS (
SELECT AVG(TOTAL) AS MEDIA_TOTALURILOR FROM Sales.Comanda
)
SELECT CC.NUME, CC.PRENUME FROM Customer.Client CC
JOIN Sales.Comanda SC ON CC.ID_Client = SC.ID_Client
WHERE SC.Total > (SELECT * FROM TOTAL_AVG_COMANDA);


-- 2. Produs cu cel mai mare preț:
--    Scrieți un query pentru a afișa numele produsului și descrierea acestuia, care are cel mai mare preț din tabelul `Sales.Produs`.
SELECT NumeProdus, DescriereProdus, PretProdus 
FROM Sales.Produs
WHERE PretProdus = (SELECT MAX(PretProdus) FROM Sales.Produs);

WITH CTE_MaxPrice AS (
SELECT MAX(PretProdus) AS MaxPrice FROM Sales.Produs 
)
SELECT NumeProdus, DescriereProdus, PretProdus  
FROM Sales.Produs
WHERE PretProdus = (SELECT * FROM CTE_MaxPrice)


-- 3. Clienți cu cel puțin două comenzi:
--    Scrieți un query pentru a găsi clienții (nume și prenume) care au plasat cel puțin două comenzi.
SELECT COUNT(A.id_client), A.id_client, B.Nume, B.Prenume FROM [Sales].[comanda] A
JOIN [Customer].[Client] B
ON A.id_client=B.ID
GROUP BY A.id_client, B.Nume, B.Prenume
HAVING COUNT(A.id_client)>='1';

WITH CTE_COMENZI
AS
(SELECT id_client FROM [Sales].[comanda]
GROUP BY id_client
HAVING COUNT(id_client)>='1')
SELECT nume, prenume FROM [Customer].[Client] AS Client
WHERE exists(SELECT '1' FROM CTE_COMENZI AS comanda WHERE client.id=comanda.id_client);


-- 4. Stoc total pe categorii:
--    Folosind un CTE, calculați stocul total al produselor grupate pe categorii (`NumeCategorie`) și afișați numai categoriile care au stocuri totale mai mari de 20.
SELECT 
	p.id_categorie,
	c.NumeCategorie
FROM Sales.Produs AS p
JOIN Sales.Categorie AS c ON c.ID=p.id_categorie
GROUP BY p.id_categorie, c.NumeCategorie
HAVING SUM(p.stoc_produs)>20;


WITH CTE_Categorie
AS
(SELECT p.id_categorie FROM Sales.Produs AS p GROUP BY p.id_categorie HAVING SUM(p.stoc_produs)>20
)
SELECT * FROM Sales.Categorie AS c WHERE exists (SELECT * FROM CTE_Categorie AS cte WHERE cte.id_categorie=c.ID)



-- 5.Venit total per produs:
--    Folosind un CTE, calculați venitul total pentru fiecare produs (sumă = `pret_unitar * cantitate`) și afișați produsele care au generat venituri mai mari de 1000.
WITH CTE_Venit_Total
AS
(
SELECT sp.nume_produs, sdc.pret_unitar * sdc.cantitate AS Suma FROM Sales.detaliicomanda sdc
JOIN Sales.Produs sp ON sdc.id_produs = sp.id_produs
)
SELECT * FROM CTE_Venit_Total
WHERE Suma > 1000



-- 6. Adâncimea categoriilor:
--    Folosind un CTE recursiv, afișați toate categoriile părinte și subcategoriile lor (folosind `IDParinte`).
WITH CTE_RECURSIV
AS
(SELECT SC.ID, SC.NumeCategorie, SC.IDparinte, 0 AS NIVEL from Sales.Categorie SC
	WHERE SC.IDParinte IS NULL
UNION ALL
SELECT SC2.ID, SC2.NumeCategorie, SC2.IDparinte, CT.NIVEL + 1 from Sales.Categorie SC2
JOIN 	CTE_RECURSIV AS CT ON SC2.IDParinte = CT.id)
SELECT * FROM CTE_RECURSIV


-- 7. Produse vândute:
--    Creați un tabel temporar care să conțină toate produsele vândute (nume, cantitate totală vândută) și apoi afișați produsele care au fost vândute în cantități mai mari de 5.
SELECT sp.nume_produs, SUM(sdc.cantitate) AS Total_vandut
INTO #Cantitate_Vanduta_Produs
FROM Sales.Produs sp
JOIN Sales.detaliicomanda sdc ON sp.id_produs = sdc.id_produs
GROUP BY sp.nume_produs
ORDER BY sp.nume_produs

SELECT * FROM #Cantitate_Vanduta_Produs
WHERE Total_vandut > 5


-- 8 Clienți activi:
--    Creați un tabel temporar care să conțină informațiile despre clienții care au plasat comenzi în ultimii 7 zile.
create table #Clienti_nou(
Nume varchar(50),
Prenume varchar(50)
)
insert into #Clienti_nou(Nume, Prenume) (
select cc.Nume, cc.Prenume from Sales.comanda sc
join Customer.Client cc on sc.id_client=cc.ID
where data_comanda>=dateadd(day,-7,getdate())
);


-- 9Funcție pentru calcul preț total:
--    Creați o funcție scalară care primește un `id_comanda` și returnează suma totală a comenzilor respective.
--    Exemplu:  
--    SELECT dbo.CalculTotalComanda(1);
CREATE FUNCTION dbo.CalculTotalComanda(
@id_comanda INT
)
RETURNS DECIMAL(10,2)
AS BEGIN 
	RETURN (SELECT TOTAL FROM Sales.comanda WHERE id_comanda = @id_comanda)
END;


SELECT dbo.CalculTotalComanda(1);

-- 10 Funcție pentru discount:
--    Creați o funcție scalară care primește `pret_produs` și `cantitate` și calculează un preț cu discount de 10% dacă cantitatea este mai mare de 5.
CREATE OR ALTER FUNCTION dbo.Discount
(
@pret_produs DECIMAL (10,2),
@cantitate INT
)
RETURNS DECIMAL (10,2)
AS
BEGIN
RETURN (CASE 
		WHEN  @cantitate > 5 THEN @pret_produs - @pret_produs * 10/100 
		ELSE  @pret_produs
		END
		)
END;
go

SELECT dbo.Discount(100,8) AS pret_produs 

-- 11Funcție tabelară pentru clienți cu comenzi mari:
--    Creați o funcție tabelară care returnează toți clienții (nume și prenume) care au plasat comenzi cu un total mai mare de 1000.--
CREATE OR ALTER FUNCTION dbo.Clienti_comenzi
()
RETURNS TABLE
AS
RETURN
(
	SELECT cc.Nume, cc.Prenume, SUM(sc.total)  AS Total_Comanda FROM Customer.Client cc
	JOIN Sales.comanda sc ON cc.ID = sc.id_client
	GROUP BY cc.Nume, cc.Prenume
	HAVING SUM(sc.total) > 1000
)

SELECT * FROM dbo.Clienti_comenzi()
ORDER BY Total_Comanda

-- 12Adăugare produs:
--    Creați o procedură stocată care permite adăugarea unui produs nou în tabelul `Sales.Produs`. Parametrii trebuie să includă `nume_produs`, `descriere_produs`, `pret_produs`, `stoc_produs` și `id_categorie`
--    EXEC AdaugaProdus 'Telefon', 'Smartphone modern', 999.99, 15, 4;
Create Procedure Insertproduct

@Nume VARCHAR(100),
@Descriere_produs VARCHAR(100), 
@Pret_produs DECIMAL (10,2),
@Stoc_produs INT, 
@ID_produs INT

AS
BEGIN
INSERT INTO Sales.Produs (nume_produs, descriere_produs, pret_produs, stoc_produs, id_categorie)
VALUES 
(@Nume, @Descriere_produs, @Pret_produs, @Stoc_produs, @ID_produs)

END;

EXEC Insertproduct 'Telefon', 'Smartphone modern', 999.99, 15, 4;
  



-- 13Actualizare stoc:
--    Creați o procedură stocată care primește un `id_produs` și o cantitate, și actualizează stocul produsului respectiv. Dacă stocul devine negativ, afișați un mesaj de eroare.
CREATE PROCEDURE ActualizeazaProdus
	@id_produs INT,
	@cantitate INT
AS
BEGIN
	UPDATE Sales.Produs SET stoc_produs = stoc_produs + @cantitate WHERE id_produs = @id_produs

	DECLARE @stoc INT = (SELECT stoc_produs FROM Sales.Produs WHERE id_produs = @id_produs)
	IF(@stoc < 0)
	BEGIN
		print('Stoc negativ')
	END
END;

EXEC ActualizeazaProdus 1, -15



-- 14. Produse dintr-o comandă:
--    Creați o procedură stocată care primește un `id_comanda` și returnează detaliile comenzii respective (produse, cantități, prețuri).
CREATE PROCEDURE spDetaliiComanda
@id_comanta INT
AS
BEGIN
	SELECT sp.nume_produs, sdc.cantitate, sdc.pret_unitar FROM Sales.Produs sp
	JOIN Sales.detaliicomanda sdc ON sp.id_produs = sdc.id_produs
	WHERE sdc.id_comanda = @id_comanta
END

EXEC spDetaliiComanda 1

-- 15 Căutare produse după categorie:
--    Creați o procedură stocată dinamică care primește un `NumeCategorie` și returnează toate produsele care aparțin categoriei respective.
--    Exemplu apel:
--    EXEC ProduseDinCategorie 'Electrocasnice';
CREATE PROCEDURE ProduseDinCategorie
	@nume VARCHAR(100)
AS
BEGIN
	SELECT p.nume_produs
	FROM [Sales].[Categorie] C
	JOIN [Sales].[Produs] p ON p.id_categorie = c.id
	WHERE C.NumeCategorie = @nume
   
END;

EXEC ProduseDinCategorie 'Electrocasnice';

-- 16 Raport flexibil de comenzi:
--    Creați o procedură stocată care primește două date (`data_start` și `data_end`) și construiește dinamic o interogare pentru a returna toate comenzile plasate în intervalul respectiv.
--    Exemplu apel:
--    EXEC RaportComenzi '2025-01-01', '2025-01-05';

 SELECT * FROM Sales.comanda

CREATE OR ALTER PROCEDURE RaportComenzi
(
	@data_start DATE,
	@data_end DATE
)
AS
BEGIN
	SET NOCOUNT ON; -- pt a nu afisa mesajul (X row(s) affected)

	DECLARE @sql NVARCHAR(MAX);

SET @sql = N'SELECT * FROM Sales.comanda WHERE data_comanda BETWEEN @data_start AND @data_end';
EXEC sp_executesql @sql,
	N'@data_start DATE, @data_end DATE',
	@data_start = @data_start,
	@data_end = @data_end;
END

EXEC dbo.RaportComenzi 
	@data_start = '2025-01-01', 
	@data_end = '2025-01-05';

-- varianta SQL static

CREATE OR ALTER PROCEDURE RaportComenzi2
(
    @data_start DATE,
    @data_end DATE
)
AS
BEGIN
    SELECT *
    FROM Sales.comanda
    WHERE data_comanda BETWEEN @data_start AND @data_end;
END;

-- 17 Filtrare clienți după câmpuri:
-- Creați o procedură dinamică care permite filtrarea clienților după orice combinație de câmpuri (`Nume`, `Prenume`, `Email`, etc.).

SELECT * FROM Customer.Client

CREATE OR ALTER PROCEDURE dbo.sp_CautareClient
(
@ID INT = NULL,
@Nume NVARCHAR(100) = NULL,
@Prenume NVARCHAR(100) = NULL,
@Email NVARCHAR(100) = NULL,
@Telefon CHAR(10) = NULL,
@Adresa NVARCHAR(100) = NULL,
@Gen CHAR(1) = NULL
)
AS
BEGIN
	SET NOCOUNT ON; -- pt a nu afisa mesajul (X row(s) affected)
	 
	DECLARE @sql NVARCHAR(MAX);
	SET @sql = N'SELECT * FROM Customer.Client
				WHERE 1=1'; -- folosit pt concatenarea cu AND

	IF @ID IS NOT NULL
        SET @sql += N' AND ID = @ID'; -- @sql += echivalent @sql = @sql +

    IF @Nume IS NOT NULL
        SET @sql += N' AND Nume = @Nume';

    IF @Prenume IS NOT NULL
        SET @sql += N' AND Prenume = @Prenume';

    IF @Email IS NOT NULL
        SET @sql += N' AND Email = @Email';

    IF @Telefon IS NOT NULL
        SET @sql += N' AND Telefon = @Telefon';

    IF @Adresa IS NOT NULL
        SET @sql += N' AND Adresa = @Adresa';

    IF @Gen IS NOT NULL
        SET @sql += N' AND Gen = @Gen';

	EXEC sp_executesql @sql,
		N'@ID INT,
		@Nume NVARCHAR(100),
		@Prenume NVARCHAR(100),
		@Email NVARCHAR(100),
		@Telefon CHAR(10),
		@Adresa NVARCHAR(100),
		@Gen CHAR(1)',
		@ID = @ID,
		@Nume = @Nume,
		@Prenume = @Prenume,
		@Email = @Email,
		@Telefon = @Telefon,
		@Adresa = @Adresa,
		@Gen = @Gen;
END;

EXEC dbo.sp_CautareClient
	@Nume = 'Lazar'