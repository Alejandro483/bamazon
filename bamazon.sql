DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price INTEGER (10),
    stock_quantity INTEGER (10),
    PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("men's shoes", "shoes", 120, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("women's shoes", "shoes", 220, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("kids shoes", "shoes", 90, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("sports shoes", "shoes", 70, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("men's pants", "clothing", 170, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("women's pants", "clothing", 370, 80);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("boys pants", "clothing", 50, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("girls pants", "clothing", 50, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("men's shirts", "clothing", 60, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("women's shirts", "clothing", 130, 65);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("girls shirts", "clothing", 99, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("boys shirts", "clothing", 50, 44);