select * from Detalii_Clienti

select Count(TransactionID) AS 'Numar tranzactii per client'
from Tranzactii
where ClientID = '1' AND ProductID != '1'