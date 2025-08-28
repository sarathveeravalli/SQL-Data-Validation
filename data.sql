-- data.sql: Sample data for Customers, Products, and Orders

INSERT INTO Customers (customer_id, customer_name, email) VALUES
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Jones', 'bob@example.com'),
(3, NULL, 'eve@example.com'),  -- Null name (for null check)
(4, 'Daisy Ray', NULL);        -- Null email (for null check)

INSERT INTO Products (product_id, product_name, price) VALUES
(101, 'Laptop', 1200.00),
(102, 'Phone', 800.00),
(103, 'Headphones', 150.00);

INSERT INTO Orders (order_id, customer_id, product_id, order_date) VALUES
(1001, 1, 101, '2025-01-10'),
(1002, 1, 102, '2025-01-11'),
(1003, 2, 103, '2025-01-12'),
(1004, 2, 103, '2025-01-12'), -- Duplicate order (for duplicate check)
(1005, 99, 101, '2025-01-14'); -- Invalid customer_id for FK validation
