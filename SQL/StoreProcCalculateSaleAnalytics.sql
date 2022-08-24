CREATE PROCEDURE calculate_sale_analytics
AS
    SELECT Items, DayPart, COUNT(*) as Items_Sold FROM Bakery_Sales
    GROUP BY Items, DayPart
    ORDER BY Items ASC
GO;