/*CTE
1. Folosind tabela olympic_games de la tema anterioara, creati un raport cu top 3 natiuni cu cele mai multe medalii obtinute la un singur joc olimpic. 
Luati in considerare valorile distincte pentru fiecare tara.*/
WITH MedalCounts AS (    SELECT         country,        year,        city,        COUNT(*) AS total_medals    FROM sale.olympic_games    GROUP BY country, year, city),Country_Best_Games As (SELECTcountry,        year,        city,        total_medals    FROM MedalCounts As M1	Where total_medals=(SELECt MAX(Total_Medals) From MedalCounts As M2	Where M2.country=M1.country	))SELECT TOP 3     country,    year,    city,    total_medalsFROM Country_Best_GamesORDER BY total_medals DESC;

/*DB AdventureWork2022 - PIVOT
2. Utilizand tabela [Sales].[SalesPerson], sa se afiseze pt fiecare id de teritoriu suma de SalesYTD.*/
SELECT *
FROM 
(
    SELECT 
        TerritoryID, 
        SalesYTD
    FROM 
        [Sales].[SalesPerson]
) AS SourceTable
PIVOT
(
    SUM(SalesYTD)
    FOR TerritoryID IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10])
) AS PivotTable;


/*3. Utilizand tabela [Purchasing].[PurchaseOrderDetail], sa se afiseze sum(linetotal) pe fiecare luna a fiecarui an disponibil in tabela (campul duedate). 
In loc de NULL, afisati 0.*/
SELECT AN,
	ISNULL([1], 0) AS [1],
	ISNULL([2], 0) AS [2],
	ISNULL([3], 0) AS [3],
	ISNULL([4], 0) AS [4],
	ISNULL([5], 0) AS [5],
	ISNULL([6], 0) AS [6],
	ISNULL([7], 0) AS [7],
	ISNULL([8], 0) AS [8],
	ISNULL([9], 0) AS [9],
	ISNULL([10], 0) AS [10],
	ISNULL([11], 0) AS [11],
	ISNULL([12], 0) AS [12]
FROM
(
	SELECT	MONTH(DueDate) AS LUNA,
			YEAR(DueDate) AS AN,
		    SUM(LineTotal) AS LineTotalPerYear
	FROM Purchasing.PurchaseOrderDetail
	GROUP BY DueDate
) AS SourceTable
PIVOT
( 
	SUM(LineTotalPerYear)
	FOR LUNA IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10],[11],[12])
)
AS Pivot_table;