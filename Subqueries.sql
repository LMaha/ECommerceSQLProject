 --Find the most expensive product in each category.
 SELECT c.CategoryName, p.ProductName, p.Price FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.Price = (
    SELECT MAX(Price) 
    FROM Products
    WHERE CategoryID = c.CategoryID
);

--List all orders where total amount > $500.
SELECT o.OrderID, c.FirstName + ' ' + c.LastName AS CustomerName, SUM(od.Quantity * od.UnitPrice) AS TotalOrderAmount
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.OrderID, c.FirstName, c.LastName
HAVING SUM(od.Quantity * od.UnitPrice) > 500;