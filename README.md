# SQL Data Validation Project

## Overview
This project validates a sample **E-commerce Database** with `Customers`, `Orders`, and `Products` tables.

## Validation Performed
- Null check on customer records
- Duplicate order detection
- Foreign key validation (Orders → Customers)
- ETL validation before and after transformations

## How to Use
1. Run `schema.sql` to create tables.
2. Insert sample data using `data.sql`.
3. Execute `validation_queries.sql` to validate data quality.
