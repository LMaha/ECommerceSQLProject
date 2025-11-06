--List each order with customer name and total amount.
SELECT o.OrderID, c.FirstName + ' ' + c.LastName AS CustomerName, o.TotalAmount FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID;

--Show total sales for each product.
SELECT p.ProductName, SUM(od.Quantity * od.UnitPrice) AS TotalSales FROM OrderDetails od 
JOIN Products p ON od.ProductID = p.ProductID GROUP BY p.ProductName;

--Count how many products are in each category.
SELECT c.CategoryName, COUNT(p.ProductID) AS ProductCount FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID GROUP BY c.CategoryName;

--Show all customers who haven’t placed any orders.
SELECT c.FirstName + ' ' + c.LastName AS CustomerName FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL