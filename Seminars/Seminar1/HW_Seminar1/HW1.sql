SELECT * FROM hw_seminar1.mobile_phones;
USE hw_seminar1;

INSERT INTO `mobile_phones` (`id`,`product_name`, `manufacturer`, `product_count`, `price`) 
						 VALUES (1, 'IphoneX', 'Apple', 3, 76000),
								(2, 'Iphone8', 'Apple', 2, 51000),
								(3, 'Galaxy S9', 'Samsung', 2, 56000),
								(4, 'Galaxy S8', 'Samsung', 1, 41000),
								(5, 'P20 Pro', 'Huawei', 5, 36000);
                                
SELECT * FROM hw_seminar1.mobile_phones;

SELECT product_name, manufacturer, price FROM mobile_phones WHERE product_count > 2;

SELECT * FROM mobile_phones WHERE manufacturer = 'Samsung';

CREATE DATABASE lesson2;
show databases;