CREATE DATABASE hw_seminar3;

USE hw_seminar3;

CREATE TABLE staff
(
Id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30),
lastname VARCHAR(30),
post VARCHAR(30),
seniority INT,
salary INT,
age INT
);

SELECT * FROM staff;

INSERT INTO staff (firstname, lastname, post, seniority, salary, age) VALUES ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
																			 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
                                                                             ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
                                                                             ('Саша', 'Сасин', 'Инженер', 12, 50000, 50),
                                                                             ('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
                                                                             ('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
                                                                             ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
                                                                             ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
                                                                             ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
                                                                             ('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
                                                                             ('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
                                                                             ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT * FROM staff;


/* 1.Отсортируйте данные по полю заработная плата (salary) в порядке убывания */
SELECT * FROM staff
ORDER BY salary DESC;

/* 2.Отсортируйте данные по полю заработная плата (salary) в порядке возрастания */
SELECT * FROM staff
ORDER BY salary;

/* 3.Выведите 5 максимальных заработных плат (salary) */
SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;

/* 4.Посчитайте суммарную зарплату (salary) по каждой специальности (роst) */
SELECT post, sum(salary) as SumSalary
FROM staff
GROUP BY post;

/* 5.Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно */
SELECT * FROM staff
WHERE post = 'Рабочий' and age >= 24 and age < 50;

/* 6.Найдите количество уникальных специальностей */
SELECT DISTINCT post from staff;

/* 7.Выведите специальности, у которых средний возраст сотрудников меньше 30 лет */
SELECT post
FROM staff
GROUP BY post
HAVING avg(age) < 30;

