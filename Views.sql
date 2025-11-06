--Create a view to display “Low Stock” products (<10 units).
CREATE VIEW LowStockProducts AS
SELECT ProductName, StockQty,
       CASE WHEN StockQty < 10 THEN 'Low Stock'
            ELSE 'Sufficient Stock'
       END AS StockStatus
FROM Products;

-- Test view
--SELECT * FROM LowStockProducts;