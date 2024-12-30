--CREATE DATABASE rtv_shop;

USE rtv_shop;

-- Creating five tables

CREATE TABLE customers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE suppliers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE reviews (
    id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT,
    comment VARCHAR(200),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
*/

-- Creating indexes

CREATE INDEX idx_customers_name ON customers (name);
CREATE INDEX idx_products_name ON products (name);
CREATE INDEX idx_orders_customer_id ON orders (customer_id);
CREATE INDEX idx_orders_product_id ON orders (product_id);
CREATE INDEX idx_reviews_product_id ON reviews (product_id);

-- Adding records

INSERT INTO customers (name, email) VALUES
    ('John Doe', 'john@example.com'),
    ('Jane Smith', 'jane@example.com'),
    ('Mike Johnson', 'mike@example.com'),
    ('Emily Brown', 'emily@example.com'),
    ('David Wilson', 'david@example.com');

INSERT INTO products (name, price) VALUES
    ('TV', 500.00),
    ('Laptop', 1000.00),
    ('Headphones', 50.00),
    ('Camera', 300.00),
    ('Speakers', 200.00);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
    (1, 1, 2, '2022-01-01'),
    (2, 3, 1, '2022-01-02'),
    (3, 2, 1, '2022-01-03'),
    (4, 4, 1, '2022-01-04'),
    (5, 5, 2, '2022-01-05');

INSERT INTO suppliers (name, address) VALUES
    ('Supplier A', '123 Main St'),
    ('Supplier B', '456 Elm St'),
    ('Supplier C', '789 Oak St'),
    ('Supplier D', '321 Pine St'),
    ('Supplier E', '654 Maple St');

INSERT INTO reviews (product_id, customer_id, rating, comment) VALUES
    (1, 1, 4, 'Great TV!'),
    (2, 2, 5, 'Excellent laptop!'),
    (3, 3, 3, 'Average headphones.'),
    (4, 4, 2, 'Disappointing camera.'),
    (5, 5, 4, 'Good speakers.');


