/*CREATE Table*/
CREATE TABLE Detalii_Persoane(
ID int,
Nume varchar(255),
Prenume varchar(255),
CNP char(13),
Adresa varchar(255),
Oras varchar(255),
Numar_telefon int
);

/*INSERT INTO*/
INSERT INTO Detalii_Persoane (ID,Nume,Prenume,CNP,Adresa,Oras,Numar_telefon)
VALUES ('1','Pop','Andrei','1900101111222','Dambovitei','Cluj-Napoca','755305222'),
('2', 'Vlad','Bodgan','1881010001002','Dorobantilor','Bururesti','0770112255'),
('3','Bob','Ioana','2910707123789','Bucuresti','Timisoara','0744535335'),
('4','Popescu','Ion','1910107163759','Pictorilor','Iasi','0743154475'),
('5','Ionescu','Maria','2980615133387','Marginasa','Cluj-Napoca','0742697847');

/*UPDATE*/
UPDATE Detalii_Persoane
SET Oras = 'Cluj-Napoca', Adresa = 'Dunarii'
WHERE ID = '3';

/*DELETE row*/
DELETE FROM Detalii_Persoane;
WHERE ID=2

/*DELETE all rows*/
DELETE FROM Detalii_Persoane;