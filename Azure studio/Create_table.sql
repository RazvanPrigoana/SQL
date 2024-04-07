USE TestDataBase
GO

-- Inventory scheme

CREATE TABLE Inventory.Furniture (
    Furniture_ID INT IDENTITY(1,1), -- unic identity, start by no. 1 and increment by 1
    Furniture_Type VARCHAR(50), -- 50 characters overall
    Furniture_Name VARCHAR(50),
    Price DECIMAL(18,4), -- 18 digits overall, 4 decimals for extra precision
    Quantity INT,
    Release_Date DATE,
    Create_Date DATETIME,
    Update_Date DATETIME
)