DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
    item_id INTEGER NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price INTEGER (10),
    stock_quantity INTEGER (10),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (1, "men's shoes", "shoes", 120, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (2, "women's shoes", "shoes", 220, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (3, "kids shoes", "shoes", 90, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (4, "sports shoes", "shoes", 70, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (5, "men's pants", "clothing", 170, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (6, "women's pants", "clothing", 370, 80);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (7, "boys pants", "clothing", 50, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (8, "girls pants", "clothing", 50, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (9, "men's shirts", "clothing", 60, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (10, "women's shirts", "clothing", 130, 65);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (11, "girls shirts", "clothing", 99, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES (12, "boys shirts", "clothing", 50, 44);