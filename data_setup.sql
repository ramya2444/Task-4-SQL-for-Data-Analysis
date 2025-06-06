
-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_country VARCHAR(50)
);

-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'Emma Wilson', 'emma.w@example.com', 'Australia'),
(2, 'Liam Johnson', 'liam.j@example.com', 'USA'),
(3, 'Olivia Chen', 'olivia.c@example.com', 'India'),
(4, 'Noah Davis', 'noah.d@example.com', 'UK');

-- Insert Products
INSERT INTO products VALUES
(1, 'Smartphone', 'Electronics', 999.99),
(2, 'Bluetooth Speaker', 'Electronics', 199.50),
(3, 'Air Fryer', 'Kitchen Appliances', 145.00),
(4, 'Office Desk', 'Furniture', 420.00);

-- Insert Orders
INSERT INTO orders VALUES
(201, 1, 1, 999.99, '2024-01-05'),
(202, 2, 2, 199.50, '2024-01-25'),
(203, 1, 3, 145.00, '2024-02-14'),
(204, 3, 4, 420.00, '2024-03-02'),
(205, 4, 2, 199.50, '2024-03-15');
