CREATE DATABASE lesson2;
show databases;

use lesson2;

CREATE TABLE Customers
(
Id INT PRIMARY KEY AUTO_INCREMENT,
Age INT,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Phone VARCHAR(20) NOT NULL UNIQUE
);

SELECT * FROM customers;

CREATE TABLE Orders
(
Id INT PRIMARY KEY AUTO_INCREMENT,
CustomerId INT,
CreatedAt Date,
FOREIGN KEY (CustomerId) REFERENCES Customers (Id)
);

-- "+" - сложение
SELECT 3+5;

-- "-" - вычитание
SELECT 3-5;

/*
комментарий
*/

SELECT 3*5;

SELECT 3/5;
# при делении на 0 вернется NULL

CREATE TABLE Products
(
Id INT AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(20) NOT NULL,
ProductCount INT DEFAULT 0,
Price DECIMAL
);

INSERT INTO `lesson2`.`products` (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Iphone X', 'Apple', '3', '76000');
INSERT INTO `lesson2`.`products` (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Iphone 8', 'Apple', '2', '51000');
INSERT INTO `lesson2`.`products` (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Galaxy S9', 'Samsung', '2', '56000');
INSERT INTO `lesson2`.`products` (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Galaxy S8', 'Samsung', '1', '41000');
INSERT INTO `lesson2`.`products` (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('G20PRO', 'Huawei', '5', '36000');

SELECT * FROM products;

SELECT * FROM products WHERE Manufacturer = 'Samsung' AND Price > 50000;

SELECT * FROM products WHERE Manufacturer = 'Samsung' OR Price > 50000;  

SELECT * FROM products WHERE NOT Manufacturer = 'Samsung';

SELECT ProductName, ProductCount,
CASE
	WHEN ProductCount = 1
		THEN 'Товар закаанчивается'
	WHEN ProductCount = 2
		THEN 'Мало товара'
	WHEN ProductCount = 3
		THEN 'Есть в наличии'
	ELSE 'Много товара'
END AS Category
FROM products;

SELECT ProductName, Manufacturer,
	IF(ProductCount > 3, 'Много товара', 'Мало товара')
FROM products;


UPDATE products SET Price = Price + 3000; # увеличит стоимость всех товаров на 3000

SELECT * FROM products;

DELETE FROM Products
WHERE Manufacturer='Huawei';

SELECT * FROM products;


