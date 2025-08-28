-- Null check
-- validation_queries.sql: Data quality and validation queries

-- 1. Null check on customer records
SELECT * FROM Customers WHERE customer_name IS NULL OR email IS NULL;

-- 2. Duplicate order detection (same customer, same product, same date)
SELECT customer_id, product_id, order_date, COUNT(*) as num_orders
FROM Orders
GROUP BY customer_id, product_id, order_date
HAVING COUNT(*) > 1;

-- 3. Foreign key validation: Orders with non-existent customers
SELECT * FROM Orders o
LEFT JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- 4. (Sample) ETL check: Before and after transformation row counts
-- Example (to be adapted to your ETL process)
-- SELECT COUNT(*) FROM Orders;         -- Before ETL
-- SELECT COUNT(*) FROM Orders_Staging; -- After ETL (if using a staging table)
