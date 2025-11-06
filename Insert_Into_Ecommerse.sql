-- Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES 
('John', 'Doe', 'john.doe@email.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@email.com', '321-654-0987');

-- Suppliers
INSERT INTO Suppliers (SupplierName, ContactName, Phone, Email)
VALUES
('Global Supplies', 'Alice Green', '111-222-3333', 'alice@globalsup.com'),
('TechSource', 'Bob Brown', '444-555-6666', 'bob@techsource.com');

-- Categories
INSERT INTO Categories (CategoryName, Description)
VALUES
('Electronics', 'Gadgets and electronic devices'),
('Clothing', 'Men and Women apparel');

-- Products
INSERT INTO Products (ProductName, CategoryID, SupplierID, Price, StockQty)
VALUES
('Laptop', 1, 2, 1200.00, 10),
('Smartphone', 1, 2, 800.00, 20),
('T-Shirt', 2, 1, 25.00, 50),
('Jeans', 2, 1, 60.00, 30);

-- Orders
INSERT INTO Orders (CustomerID, TotalAmount)
VALUES
(1, 1200.00),
(2, 85.00);

-- OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 1200.00),
(2, 3, 2, 25.00),
(2, 4, 1, 35.00); -- intentional to show difference between unit price and total
