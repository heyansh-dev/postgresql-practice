-- PRIMARY KEY
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- NOT NULL
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL
);

-- UNIQUE
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE
);

-- DEFAULT
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    is_available BOOLEAN DEFAULT TRUE
);

-- CHECK
CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    price NUMERIC CHECK(price > 0)
);

-- FOREIGN KEY
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id)
);