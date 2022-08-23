IF OBJECT_ID('Sales') IS NULL
CREATE TABLE Sales(
    sale_id INT NOT NULL, 
    item_name nvarchar(255) NOT NULL,
    quantity INT NOT NULL,
    item_price FLOAT NOT NULL,
    total_price FLOAT NOT NULL
);


INSERT INTO Sales(sale_id, item_name, quantity, item_price, total_price) 
    VALUES(1001, 'Paper', 10, 5.00, 50.00);
INSERT INTO Sales(sale_id, item_name, quantity, item_price, total_price) 
    VALUES(1002, 'Duct Tape', 5, 0.50, 2.50);
INSERT INTO Sales(sale_id, item_name, quantity, item_price, total_price) 
    VALUES(1003, 'Paper Clip', 100, 0.02, 2.00)
INSERT INTO Sales(sale_id, item_name, quantity, item_price, total_price) 
    VALUES(1004, 'Pens', 100, 0.30, 30.00)
INSERT INTO Sales(sale_id, item_name, quantity, item_price, total_price) 
    VALUES(1005, 'Binders', 10, 1.00, 10.00)



SELECT * FROM master.dbo.Sales;


CREATE PROCEDURE calculate_total_sale
AS
    SET NOCOUNT ON;
    SELECT SUM(total_price) FROM Sales
GO;

EXECUTE calculate_total_sale;