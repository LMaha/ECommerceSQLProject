--	1. List all products with price greater than $50.
SELECT ProductName, Price FROM Products WHERE Price > 50;

--Show all customers’ full names and emails, sorted by last name.
SELECT FirstName + ' ' + LastName AS FullName, Email FROM Customers ORDER BY LastName;

--Find all orders placed after Jan 1, 2025.
SELECT OrderID, CustomerID, OrderDate, TotalAmount FROM Orders WHERE OrderDate > '2025-01-01';
