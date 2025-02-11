--1.Explicați scopul și avantajele utilizării unei baze de date față de fișierele tradiționale.

/*Organizare eficientă a datelor: Baza de date permite structurarea informațiilor în tabele interconectate, facilitând accesul și gestionarea datelor.
Reducerea redundanței și a inconsistenței: Prin normalizare, se minimizează duplicarea datelor, asigurând coerența și actualitatea informațiilor.
Acces rapid și securizat: Sistemele de gestionare a bazelor de date (SGBD) oferă mecanisme de căutare și recuperare rapidă a datelor, precum și controale de securitate pentru protejarea 
informațiilor sensibile.
Integritate referențială: Prin utilizarea cheilor primare și străine, se menține corectitudinea relațiilor dintre tabele, prevenind inconsecvențele.
Scalabilitate și partajare: Bazele de date permit gestionarea unor volume mari de date și accesul simultan al mai multor utilizatori, asigurând integritatea tranzacțiilor.*/


-- 2.Enumerați și definiți conceptele de tabel, coloană și rând.

/*Tabel: O colecție de date organizate în rânduri și coloane, fiecare tabel reprezentând o entitate distinctă, precum "Clienți" sau "Comenzi".

Coloană: Un atribut al entității reprezentate de tabel; de exemplu, în tabelul "Clienți", coloanele pot fi "Nume", "Prenume" și "Adresă".

Rând: O înregistrare individuală dintr-un tabel, conținând date specifice pentru fiecare atribut; de exemplu, un rând din tabelul "Clienți" poate conține informațiile unui anumit client.*/



-- 3.Explicați diferențele dintre cheia primară, cheia candidată și cheia străină.
/*Cheie primară: Un atribut sau un set de atribute care identifică în mod unic fiecare rând dintr-un tabel.
De exemplu, în tabelul "Clienți", "ID_Client" poate fi cheia primară.

Cheie candidată: Un atribut sau un set de atribute care ar putea servi drept cheie primară, deoarece identifică în mod unic rândurile dintr-un tabel. 
Un tabel poate avea multiple chei candidate, dar doar una este aleasă ca cheie primară.

Cheie străină: Un atribut sau un set de atribute dintr-un tabel care se referă la cheia primară a altui tabel, stabilind o relație între cele două tabele. De exemplu, în tabelul "Comenzi",
"ID_Client" poate fi o cheie străină care face referire la "ID_Client" din tabelul "Clienți".*/



-- 4.Creați un index pentru coloana NumeProdus din tabelul Produs și explicați beneficiile acestuia. -> later




-- 5.Creați baza de date MagazinOnline.
CREATE DATABASE MagazinOnline;
GO

CREATE SCHEMA Customer;
GO

CREATE SCHEMA Sales;
GO

-- 6.Creați tabelele necesare pentru a gestiona produse, clienți, comenzi și detalii despre comenzi.
CREATE TABLE Customer.Client (
	ID INT PRIMARY KEY IDENTITY(1,1),
	Nume NVARCHAR(100) NOT NULL,
	Prenume NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) NOT NULL,
	Telefon CHAR(10) NOT NULL,
	Adresa NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE Sales.Categorie (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NumeCategorie NVARCHAR(100) NOT NULL,
    Descriere NVARCHAR(MAX),
    IDParinte INT NULL,
    CONSTRAINT FK_Categorie_Parinte FOREIGN KEY (IDParinte) REFERENCES Sales.Categorie(ID)
);

Go

CREATE Table Sales.Produs(
id_produs int primary key identity(1,1),
nume_produs nvarchar(100) NOT NULL,
descriere_produs nvarchar(100) NOT NULL,
pret_produs DECIMAL(10,2) NOT NULL,
stoc_produs int NOT NULL default 0,
id_categorie int,
CONSTRAINT fk_id_categorie foreign key(id_categorie) references sales.categorie(ID));

Go

CREATE Table sales.comanda(
id_comanda int primary key identity(1,1),
data_comanda date NOT NULL,
total decimal(10,2) NOT NULL,
id_client int foreign key(id_client) references customer.client(id));
GO

CREATE Table sales.detaliicomanda(
id_detaliicomanda int primary key identity(1,1),
id_comanda int foreign key(id_comanda) references sales.comanda(id_comanda),
id_produs int foreign key(id_produs) references sales.produs(id_produs),
cantitate int NOT NULL,
pret_unitar decimal(10,2) NOT NULL)



-- 7.Adăugați constrângeri pentru a valida prețurile și stocurile produselor (preț > 0, stoc >= 0).
ALTER TABLE Sales.Produs
ADD CONSTRAINT CK_Stoc
CHECK (StocProdus >= 0);


-- 8.Adăugați o coloană Gen în tabelul Client, care să accepte doar valorile M și F.
ALTER TABLE Customer.Client
ADD Gen CHAR(1)
CHECK (Gen = 'M' OR Gen = 'F');


-- 9.Scrieți o interogare simplă care afișează toate produsele din tabelul Produs.
SELECT * FROM Sales.Produs;


-- 10.Folosiți predicatul WHERE pentru a afișa doar produsele mai scumpe de 100.
SELECT * FROM Sales.Produs
WHERE pret_produs > 100;



-- 11.Combinați mai multe condiții cu AND și OR pentru a filtra produsele.
SELECT * FROM Sales.Produs
WHERE pret_produs > 100 AND stoc_produs > 10 OR id_categorie = 1;


-- 12.Scrieți un query care returnează toate comenzile plasate după o anumită dată.
SELECT * FROM Sales.Comanda
WHERE data_comanda > '2025-01-05';


-- 13.Afișați doar coloanele NumeProdus și Pret din tabelul Produs.
SELECT nume_produs, pret_produs FROM Sales.Produs;


-- 14.Folosiți DISTINCT pentru a elimina duplicatele dintr-o interogare.
SELECT DISTINCT Nume, Prenume, Telefon, GEN FROM Customer.Client;

SELECT COUNT (*), Nume, Prenume, Telefon, GEN FROM Customer.Client
GROUP BY Nume, Prenume, Telefon, GEN
HAVING COUNT (*) = 1;

WITH CTE_1
AS (SELECT COUNT (*) AS Total_Aparitii, Nume, Prenume, Telefon, GEN FROM Customer.Client
	GROUP BY Nume, Prenume, Telefon, GEN)
SELECT * FROM CTE_1
WHERE Total_Aparitii = 1;

-- 15.Utilizați aliasuri pentru coloanele dintr-o interogare.
SELECT nume_produs AS Produs, pret_produs AS Pret FROM Sales.Produs;


-- 16.Adăugați o expresie CASE care să afișeze "Scump" sau "Ieftin" pe baza prețului produsului.
SELECT nume_produs, 
       CASE 
           WHEN pret_produs > 500 THEN 'Scump' 
           ELSE 'Ieftin' 
       END AS CategoriaPret
FROM Sales.Produs;

-- 17.Scrieți o interogare care combină informații din tabelele Client și Comanda folosind INNER JOIN.
SELECT c.Nume, c.Prenume, co.data_comanda, co.total
FROM Customer.Client c
INNER JOIN Sales.Comanda co ON c.ID = co.id_client;

-- 18.Utilizați un LEFT OUTER JOIN pentru a afișa toate comenzile și detaliile despre clienți.
SELECT co.id_comanda, co.data_comanda, co.total, c.Nume, c.Prenume
FROM Sales.Comanda co
LEFT JOIN Customer.Client c ON co.id_client = c.ID;


-- 19.Realizați un SELF JOIN pe tabelul Categorie pentru a afișa ierarhia categoriilor.
SELECT Categ1.NumeCategorie, Categ2.NumeCategorie from Sales.Categorie Categ1
JOIN Sales.Categorie Categ2 ON Categ1.ID_Categorie = Categ2.IDParinte
UNION
SELECT NULL, NumeCategorie FROM Sales.Categorie
WHERE IDParinte IS NULL;

SELECT Categ1.NumeCategorie, Categ2.NumeCategorie from Sales.Categorie Categ1
RIGHT JOIN Sales.Categorie Categ2 ON Categ1.ID_Categorie = Categ2.IDParinte

-- 20.Faceți un CROSS JOIN între tabelele Produs și Categorie și explicați rezultatul.
SELECT p.nume_produs, c.NumeCategorie
FROM Sales.Produs p
CROSS JOIN Sales.Categorie c;
-- Rezultatul va returna toate combinațiile posibile între produse și categorii.

-- 21.Sortați produsele după preț în ordine descrescătoare.
SELECT * FROM Sales.Produs
ORDER BY pret_produs DESC;

-- 22.Afișați doar primele 5 produse din tabelul Produs.
SELECT TOP 5 * FROM Sales.Produs
ORDER BY pret_produs DESC;

-- 23.Utilizați OFFSET-FETCH pentru a afișa produsele de pe pagina 3 (cu 5 produse pe pagină).
SELECT * FROM Sales.Produs
ORDER BY pret_produs
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;


-- 24.Filtrați produsele care au NULL în descriere.
SELECT * FROM Sales.Produs
WHERE descriere_produs IS NULL;

-- 25.Adăugați o coloană DataAdaugare în tabelul Produs pentru a stoca data adăugării.
ALTER TABLE Sales.Produs ADD DataAdaugare DATE DEFAULT GETDATE();

-- 26.Conversia unui preț de tip DECIMAL la VARCHAR folosind funcții de conversie.
SELECT CAST(pret_produs AS VARCHAR) AS PretCaText FROM Sales.Produs;

-- 27.Verificați toate valorile NULL din tabelul Produs.
SELECT * FROM Sales.Produs
WHERE nume_produs IS NULL OR descriere_produs IS NULL;

-- 28.Calculați diferența în zile între două date din tabelul Comanda.
SELECT DATEDIFF(DAY, '2025-01-01', data_comanda) AS DiferentaZile
FROM Sales.Comanda;

-- 29.Inserarea unui produs nou în tabelul Produs.
INSERT INTO Sales.Produs (nume_produs, descriere_produs, pret_produs, stoc_produs, id_categorie)
VALUES ('Pix', 'Instrument de scris', 5.99, 100, 6);

-- 30.Actualizați prețul tuturor produselor cu o anumită valoare procentuală.
UPDATE Sales.Produs
SET pret_produs = pret_produs * 1.10;

-- 31.Ștergeți toate produsele care nu au stoc.
DELETE FROM Sales.Produs
WHERE stoc_produs = 0;

-- 32.Resetați valorile de stoc ale produselor la un minim de 5.
UPDATE Sales.Produs
SET stoc_produs = 5
WHERE stoc_produs < 5;

-- 33.Combinați numele și prenumele unui client într-o singură coloană.
SELECT CONCAT(Nume, ' ', Prenume) AS NumeComplet FROM Customer.Client;

-- 34.Utilizați funcția ISNULL pentru a înlocui valorile NULL dintr-o coloană.
SELECT ISNULL(descriere_produs, 'Fără descriere') AS Descriere FROM Sales.Produs;

-- 35.Calculați numărul total de produse disponibile în stoc.
SELECT SUM(stoc_produs) AS TotalStoc FROM Sales.Produs;

-- 36.Utilizați o funcție de agregare pentru a calcula prețul mediu al produselor.
SELECT AVG(pret_produs) AS PretMediu FROM Sales.Produs;

-- 37.Gruparea produselor după categorie și calcularea stocului total pentru fiecare categorie.
SELECT id_categorie, SUM(stoc_produs) AS StocTotal
FROM Sales.Produs
GROUP BY id_categorie;

-- 38.Utilizați HAVING pentru a filtra grupurile de produse cu stoc total mai mic de 50.
SELECT id_categorie, SUM(stoc_produs) AS StocTotal
FROM Sales.Produs
GROUP BY id_categorie
HAVING SUM(stoc_produs) < 50;

-- 39.Calculați veniturile totale generate de comenzile unui client.
SELECT c.Nume, c.Prenume, SUM(co.total) AS VenitTotal
FROM Customer.Client c
INNER JOIN Sales.Comanda co ON c.ID = co.id_client
GROUP BY c.Nume, c.Prenume;

-- 40.Afișați categoriile cu mai mult de 5 produse.
SELECT c.NumeCategorie, COUNT(p.id_produs) AS NrProduse
FROM Sales.Categorie c
INNER JOIN Sales.Produs p ON c.ID = p.id_categorie
GROUP BY c.NumeCategorie
HAVING COUNT(p.id_produs) > 5;

-- 41.Scrieți o subinterogare pentru a afișa produsele mai scumpe decât prețul mediu.
SELECT * FROM Sales.Produs
WHERE pret_produs > (SELECT AVG(pret_produs) FROM Sales.Produs);

-- 42.Folosiți EXISTS pentru a verifica dacă există produse fără comenzi.
SELECT CASE 
           WHEN EXISTS (SELECT 1 FROM Sales.Produs p
                        LEFT JOIN Sales.DetaliiComanda dc ON p.id_produs = dc.id_produs
                        WHERE dc.id_produs IS NULL)
           THEN 'Da'
           ELSE 'Nu'
       END AS ExistaProduseFaraComenzi;

-- 43.Utilizați o subinterogare corelată pentru a lista clienții cu cel puțin o comandă.
SELECT DISTINCT c.Nume, c.Prenume
FROM Customer.Client c
WHERE EXISTS (
    SELECT 1 FROM Sales.Comanda co WHERE co.id_client = c.ID
);

-- 44.Utilizați o expresie tabelară comună (CTE) pentru a afișa toate categoriile și subcategoriile lor.
WITH CTE_Categorii AS (
    SELECT ID, NumeCategorie, IDParinte
    FROM Sales.Categorie
)
SELECT c1.NumeCategorie AS Categoria, c2.NumeCategorie AS Subcategoria
FROM CTE_Categorii c1
LEFT JOIN CTE_Categorii c2 ON c1.ID = c2.IDParinte;

-- 45.Creați o vedere (VIEW) care să combine produsele cu comenzile lor.
CREATE VIEW vw_ProduseComenzi AS
SELECT p.nume_produs, dc.cantitate, dc.pret_unitar, c.Nume, c.Prenume
FROM Sales.Produs p
INNER JOIN Sales.DetaliiComanda dc ON p.id_produs = dc.id_produs
INNER JOIN Sales.Comanda co ON dc.id_comanda = co.id_comanda
INNER JOIN Customer.Client c ON co.id_client = c.ID;

-- 46.Folosiți o funcție tabelară pentru a returna produsele disponibile într-o anumită categorie.
CREATE FUNCTION fn_ProduseDisponibile (@id_categorie INT)
RETURNS TABLE
AS
RETURN (
    SELECT * FROM Sales.Produs
    WHERE id_categorie = @id_categorie AND stoc_produs > 0
);

-- 47.Utilizați UNION pentru a combina produse din două categorii diferite.
SELECT nume_produs FROM Sales.Produs WHERE id_categorie = 1
UNION
SELECT nume_produs FROM Sales.Produs WHERE id_categorie = 2;

-- 48.Folosiți EXCEPT pentru a afișa comenzile care nu includ un anumit produs.
SELECT id_comanda FROM Sales.Comanda
EXCEPT
SELECT id_comanda FROM Sales.DetaliiComanda WHERE id_produs = 1;

-- 49.Utilizați INTERSECT pentru a găsi produsele comune între două subcategorii.
SELECT nume_produs FROM Sales.Produs WHERE id_categorie = 5
INTERSECT
SELECT nume_produs FROM Sales.Produs WHERE id_categorie = 6;

-- 50.Scrieți o interogare pentru a afișa produsele de pe pagina 2, presupunând că fiecare pagină are câte 5 produse:
SELECT NUME_PRODUS FROM Sales.Produs
ORDER BY nume_produs
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY