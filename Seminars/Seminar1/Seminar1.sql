SELECT * FROM seminar1.students where name_student = 'Andrew';
use seminar1;
CREATE TABLE `teachers`(`teachet_id` INT PRIMARY KEY AUTO_INCREMENT, 
						`post` VARCHAR(100));

ALTER TABLE `teachers` ADD COLUMN `name_teacher` VARCHAR(100); 
                        
INSERT INTO `teachers` (`name_teacher`, `post`) VALUES ('ИВАН ЛИНЦОВ','МНС'),('МИХАИЛ МЕРКУШОВ','Лаборант');

CREATE TABLE `courses`(`course_id` INT PRIMARY KEY AUTO_INCREMENT, 
						`name_course` VARCHAR(100),
                        `name_student` VARCHAR(100),
                        `name_teacher` VARCHAR(100));
			
            
INSERT INTO `courses` (`name_course`, `name_student`, `name_teacher`) VALUES ('MySQL', 'Andrew', 'Иван'),('MySQL','Mikhail', 'Михаил');

SELECT * FROM courses;

CREATE TABLE `teachers1`(`teachet_id` INT PRIMARY KEY AUTO_INCREMENT, 
						`post` VARCHAR(100));
                        
DROP TABLE `teachers1`;

SELECT * FROM students WHERE name_student = 'Andrew';

SELECT name_student, email FROM students;

SELECT * FROM students WHERE name_student LIKE 'A%';

SELECT * FROM students WHERE name_student LIKE '%A%';

CREATE TABLE `workers`(`worker_id` INT PRIMARY KEY, 
						`name_worker` VARCHAR(100),
						`dept` VARCHAR(50),
						`salary` DOUBLE);
                        
INSERT INTO `workers` (`worker_id`, `name_worker`, `dept`, `salary`) 
						 VALUES (100, 'AndreyEx', 'Sales', 5000),
								(200, 'Boris', 'IT', 5500),
								(300, 'Anna', 'IT', 7000),
								(400, 'Anton', 'Marketing', 9500),
								(500, 'Dima', 'IT', 6000),
								(501, 'Maxs', 'Accounting', NULL);
                                
SELECT * FROM workers WHERE salary > 600;

SELECT * FROM workers WHERE dept = 'IT';

SELECT * FROM workers WHERE dept != 'IT';
SELECT * FROM workers WHERE dept <> 'IT';



