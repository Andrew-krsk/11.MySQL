CREATE DATABASE lesson3;

USE lesson3;

CREATE TABLE Products
(
Id INT AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(20) NOT NULL,
ProductCount INT DEFAULT 0,
Price DECIMAL
);

INSERT INTO products (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Iphone X', 'Apple', '3', '76000');
INSERT INTO products (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Iphone 8', 'Apple', '2', '51000');
INSERT INTO products (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Galaxy S9', 'Samsung', '2', '56000');
INSERT INTO products (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('Galaxy S8', 'Samsung', '1', '41000');
INSERT INTO products (`ProductName`, `Manufacturer`, `ProductCount`, `Price`) VALUES ('G20PRO', 'Huawei', '5', '36000');

SELECT * FROM products
ORDER BY Price;   # сортировка по столбцу price по возрастанию (параметр DESC поставит по убыванию, ASC - по возрастанию)

SELECT ProductName, ProductCount * Price AS TotalSum
FROM products
ORDER BY TotalSum;

SELECT * FROM products
LIMIT 3;   # покажет первые 3 строчки

SELECT * FROM products
LIMIT 2, 3;   # покажет 3 строчки, начиная с 3

SELECT DISTINCT Manufacturer FROM products;   # distinct: вывод уникальных производителей

SELECT DISTINCT Manufacturer, ProductCount FROM products;   # distinct: вывод уникальных производителей

SELECT Manufacturer, count(*) AS ModelsCount   # count - считает количество строк
FROM products
GROUP BY Manufacturer;

/* Агрегатные функции
В MySQL есть следующие агрегатные функции:
AVG: вычисляет среднее значение
SUM: вычисляет сумму значений
MIN: вычисляет наименьшее значение
MAX: вычисляет наибольшее значение
COUNT: вычисляет количество строк в запросе */

SELECT avg(Price) AS Average_Price FROM products;

SELECT avg(Price) AS Average_Price FROM products
WHERE Manufacturer = 'Apple';

SELECT count(*) FROM products;

SELECT Manufacturer, count(*) as ModelsCount
FROM products
GROUP BY Manufacturer
HAVING count(*) > 1;

SELECT Manufacturer, count(*) as ModelsCount
FROM products
WHERE Price * ProductCount > 80000
GROUP BY Manufacturer
HAVING count(*) > 1;

