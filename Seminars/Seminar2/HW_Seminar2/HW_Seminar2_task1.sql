CREATE DATABASE hw_seminar2;

SHOW DATABASES;

USE hw_seminar2;

CREATE TABLE sales (id INT PRIMARY KEY AUTO_INCREMENT,
						order_date DATE NOT NULL,
                        count_product INT);

INSERT INTO sales (order_date, count_product) VALUES ('2022-01-01', 156),
													  ('2022-01-02', 180),
                                                      ('2022-01-03', 21),
                                                      ('2022-01-04', 124),
                                                      ('2022-01-05', 341);
SELECT * FROM sales;


