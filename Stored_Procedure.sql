--Write a stored procedure to add a new product to the database.
CREATE PROCEDURE AddProduct
    @ProductName NVARCHAR(100),
    @CategoryID INT,
    @SupplierID INT,
    @Price DECIMAL(10,2),
    @StockQty INT
AS
BEGIN
    INSERT INTO Products (ProductName, CategoryID, SupplierID, Price, StockQty)
    VALUES (@ProductName, @CategoryID, @SupplierID, @Price, @StockQty);
END;

-- Example execution
EXEC AddProduct 'Headphones', 1, 2, 150.00, 25;
