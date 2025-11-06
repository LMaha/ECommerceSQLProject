-- Total sales per customer
SELECT c.FirstName, c.LastName, SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.FirstName, c.LastName;

-- View: Product Stock Status
CREATE VIEW ProductStockView AS
SELECT ProductName, StockQty, 
       CASE 
           WHEN StockQty < 10 THEN 'Low Stock'
           ELSE 'Sufficient Stock'
       END AS StockStatus
FROM Products;

-- Stored Procedure: Add a new order
CREATE PROCEDURE AddOrder
    @CustomerID INT,
    @ProductID INT,
    @Quantity INT
AS
BEGIN
    DECLARE @UnitPrice DECIMAL(10,2);
    SELECT @UnitPrice = Price FROM Products WHERE ProductID = @ProductID;

    INSERT INTO Orders (CustomerID, TotalAmount) VALUES (@CustomerID, @UnitPrice*@Quantity);
    DECLARE @OrderID INT = SCOPE_IDENTITY();

    INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) 
    VALUES (@OrderID, @ProductID, @Quantity, @UnitPrice);

    UPDATE Products SET StockQty = StockQty - @Quantity WHERE ProductID = @ProductID;
END;
