--Find top 3 customers by total spending.
SELECT TOP 3 c.FirstName + ' ' + c.LastName AS CustomerName,
       SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC;

--Calculate average order value per customer.
SELECT c.FirstName + ' ' + c.LastName AS CustomerName,
       AVG(od.Quantity * od.UnitPrice) AS AvgOrderValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.FirstName, c.LastName;

--List products that have never been ordered.
SELECT p.ProductName FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID WHERE od.OrderDetailID IS NULL;

--Show monthly sales trends using YEAR(OrderDate), MONTH(OrderDate).

SELECT YEAR(o.OrderDate) AS OrderYear, MONTH(o.OrderDate) AS OrderMonth, SUM(od.Quantity * od.UnitPrice) AS MonthlySales
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY OrderYear, OrderMonth;
