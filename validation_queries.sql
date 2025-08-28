-- Null check
SELECT * FROM Customers WHERE name IS NULL OR email IS NULL;

-- Duplicate check
SELECT customer_id, COUNT(*) FROM Customers GROUP BY customer_id HAVING COUNT(*) > 1;

-- Referential integrity check
SELECT * FROM Orders WHERE customer_id NOT IN (SELECT customer_id FROM Customers);

-- ETL validation example
SELECT order_id, quantity, price, (quantity * price) AS expected_total
FROM Orders
JOIN Products USING(product_id);