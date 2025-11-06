-- List all customers
SELECT * FROM Customers;

-- Products with stock > 20
SELECT ProductName, StockQty FROM Products WHERE StockQty > 20;

-- Join products with category
SELECT p.ProductName, c.CategoryName 
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID;

-- Orders with customer names
SELECT o.OrderID, c.FirstName, c.LastName, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;
