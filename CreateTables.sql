CREATE DATABASE IF NOT EXISTS JauntyCoffeeCo;

USE JauntyCoffeeCo;

CREATE TABLE IF NOT EXISTS Coffee_Shop(
    shop_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    shop_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee(
    employee_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL,
    job_title VARCHAR(30) NOT NULL,
    shop_id INTEGER NOT NULL,
    FOREIGN KEY(shop_id) REFERENCES Coffee_Shop(shop_id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS Supplier(
  supplier_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR(50),
  country VARCHAR(50),
  sales_contact_name VARCHAR(60),
  email VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Coffee(
    coffee_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    shop_id INTEGER,
    supplier_id INTEGER,
    coffee_name VARCHAR(30),
    price_per_pound NUMERIC(5,2),
    FOREIGN KEY(shop_id) REFERENCES Coffee_Shop(shop_id) ON DELETE RESTRICT,
    FOREIGN KEY(supplier_id) REFERENCES Supplier(supplier_id) ON DELETE RESTRICT
);