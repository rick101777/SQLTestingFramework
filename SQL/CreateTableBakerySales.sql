IF OBJECT_ID('Bakery_Sales') IS NULL
CREATE TABLE Bakery_Sales(
    TransactionNo INT NOT NULL,
    Items NVARCHAR(255) NOT NULL,
    TransactionTime DATETIME NOT NULL,
    Daypart NVARCHAR(255) NOT NULL,
    DayType NVARCHAR(255) NOT NULL
);