# Proj_rtv_store_db

This basic university project implements a relational database system for managing an RTV (electronics) shop. It provides a structure for customers, products, orders, suppliers, and reviews, including essential functions and procedures for interacting with the database.

## Features

- **Core Tables**: 
  - `customers`: Stores customer details (name, email).
  - `products`: Maintains product catalog (name, price).
  - `orders`: Tracks customer orders, including product, quantity, and date.
  - `suppliers`: Records supplier information (name, address).
  - `reviews`: Captures customer feedback with ratings and comments.

- **Indexes**: Improves query performance for names, customer IDs, product IDs, etc.

- **Functions and Procedures**:
  - `AvgProductRating`: Calculates the average rating of a specific product.
  - `update_records`: Updates customer names and product prices dynamically.

## Setup Instructions

1. **Create the Database**: Run the `SQLQuery_dml_ddl.sql` file to create the database, tables, indexes, and populate initial data.
2. **Add Functions**: Use `SQLQuery_fcn.sql` to define the `AvgProductRating` function.
3. **Add Procedures**: Execute `SQLQuery_procedure.sql` to create the `update_records` procedure.
4. **Execute Main Logic**: Use `SQLQuery_main.sql` to calculate average ratings or execute procedures.

## Example Queries

- Calculate the average rating of a product:
  ```sql
  DECLARE @ProductID INT = 1;
  DECLARE @AvgRating DECIMAL(3, 2);
  SET @AvgRating = dbo.AvgProductRating(@ProductID);
  PRINT 'Average rating: ' + CAST(@AvgRating AS VARCHAR);
  ```

- Update a customer and product record:
  ```sql
  EXEC update_records @cId = 1, @pId = 2;
  ```

## Tech

- SQL Server


