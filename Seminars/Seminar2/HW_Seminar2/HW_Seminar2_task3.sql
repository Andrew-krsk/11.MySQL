CREATE DATABASE hw_seminar2;

SHOW DATABASES;

USE hw_seminar2;

CREATE TABLE orders (id INT PRIMARY KEY AUTO_INCREMENT,
						employee_id VARCHAR(10) NOT NULL UNIQUE,
                        amount DECIMAL(5,2),
                        order_status VARCHAR(20));

INSERT INTO orders (employee_id, amount, order_status) VALUES ('e03', 15.00, 'OPEN'),
													  ('e01', 25.50, 'OPEN'),
                                                      ('e05', 100.70, 'CLOSED'),
                                                      ('e02', 22.18, 'OPEN'),
                                                      ('e04', 09.50, 'CANCELLED');
                                                      
SELECT * FROM orders;

SELECT id, order_status,
CASE
WHEN order_status = 'OPEN' then "Order is in open state"
WHEN order_status = 'CLOSED' then "Order is closed"
WHEN order_status = 'CANCELLED' then "Order is cancelled"
ELSE "Неизвестный статус заказа"
END AS full_order_status
from orders;