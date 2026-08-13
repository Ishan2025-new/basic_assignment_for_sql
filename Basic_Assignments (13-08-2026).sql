CREATE DATABASE assignment;
USE assignment;

CREATE TABLE employees (
id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique Employee ID',
name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL,
salary DECIMAL(10, 2) NOT NULL,
join_date DATE NOT NULL
) COMMENT='Stores employee details';

INSERT INTO employees (name, department, salary, join_date) VALUES 
('John Doe', 'HR', 50000.00, '2024-01-15'),
('Jane Smith', 'IT', 60000.00, '2024-03-22'),
('Alice Johnson', 'Finance', 55000.00, '2024-07-30'),
('Bob Brown', 'IT', 62000.00, '2025-02-10'),
('Charlie Davis', 'HR', 48000.00, '2025-05-05');

ALTER TABLE employees MODIFY salary DECIMAL(10, 2) COMMENT "Employee's monthly salary";

DESC employees;

/*
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| id         | int           | NO   | PRI | NULL    | auto_increment |
| name       | varchar(50)   | NO   |     | NULL    |                |
| department | varchar(50)   | NO   |     | NULL    |                |
| salary     | decimal(10,2) | YES  |     | NULL    |                |
| join_date  | date          | NO   |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE employees;

/*
| Table     | Create Table |
| employees | CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Employee ID',
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL COMMENT 'Employee''s monthly salary',
  `join_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Stores employee details' |
*/

SELECT * FROM employees;

/*
+----+---------------+------------+----------+------------+
| id | name          | department | salary   | join_date  |
+----+---------------+------------+----------+------------+
|  1 | John Doe      | HR         | 50000.00 | 2024-01-15 |
|  2 | Jane Smith    | IT         | 60000.00 | 2024-03-22 |
|  3 | Alice Johnson | Finance    | 55000.00 | 2024-07-30 |
|  4 | Bob Brown     | IT         | 62000.00 | 2025-02-10 |
|  5 | Charlie Davis | HR         | 48000.00 | 2025-05-05 |
+----+---------------+------------+----------+------------+
*/

SELECT DISTINCT department FROM employees;

/*
+------------+
| department |
+------------+
| HR         |
| IT         |
| Finance    |
+------------+
*/

SELECT * FROM employees WHERE department='IT';

/*
+----+------------+------------+----------+------------+
| id | name       | department | salary   | join_date  |
+----+------------+------------+----------+------------+
|  2 | Jane Smith | IT         | 60000.00 | 2024-03-22 |
|  4 | Bob Brown  | IT         | 62000.00 | 2025-02-10 |
+----+------------+------------+----------+------------+
*/

ALTER TABLE employees ADD COLUMN email VARCHAR(100);

SELECT * FROM employees LIMIT 3;

/*
+----+---------------+------------+----------+------------+-------+
| id | name          | department | salary   | join_date  | email |
+----+---------------+------------+----------+------------+-------+
|  1 | John Doe      | HR         | 50000.00 | 2024-01-15 | NULL  |
|  2 | Jane Smith    | IT         | 60000.00 | 2024-03-22 | NULL  |
|  3 | Alice Johnson | Finance    | 55000.00 | 2024-07-30 | NULL  |
+----+---------------+------------+----------+------------+-------+
*/


SELECT name AS 'Employee Name', salary AS 'Monthly Salary' FROM employees;

/*
+---------------+----------------+
| Employee Name | Monthly Salary |
+---------------+----------------+
| John Doe      |       50000.00 |
| Jane Smith    |       60000.00 |
| Alice Johnson |       55000.00 |
| Bob Brown     |       62000.00 |
| Charlie Davis |       48000.00 |
+---------------+----------------+
*/

INSERT INTO employees (name, department, salary, join_date) VALUES ('Eva Green', 'Finance', 58000.00, '2025-01-10');

SELECT * FROM employees;

/*
+----+---------------+------------+----------+------------+-------+
| id | name          | department | salary   | join_date  | email |
+----+---------------+------------+----------+------------+-------+
|  1 | John Doe      | HR         | 50000.00 | 2024-01-15 | NULL  |
|  2 | Jane Smith    | IT         | 60000.00 | 2024-03-22 | NULL  |
|  3 | Alice Johnson | Finance    | 55000.00 | 2024-07-30 | NULL  |
|  4 | Bob Brown     | IT         | 62000.00 | 2025-02-10 | NULL  |
|  5 | Charlie Davis | HR         | 48000.00 | 2025-05-05 | NULL  |
|  6 | Eva Green     | Finance    | 58000.00 | 2025-01-10 | NULL  |
+----+---------------+------------+----------+------------+-------+
*/