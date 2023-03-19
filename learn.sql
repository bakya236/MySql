


/*Syntax for creating table:
CREATE TABLE  tablename
column1 COLUMN1-DATATYPE(size) CONSTRAINTS,
column2 COLUMN2-DATATYPE(size) CONSTRAINTS,
);
*/
Create Database if not exists myfashionstudio;
USE myfashionstudio;
-- create database if not exists minimal;
CREATE TABLE IF NOT EXISTS project_user(
username VARCHAR(50) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password VARCHAR(50),
dob DATE,
phone VARCHAR(20)
);


-- to delete a database

DROP DATABASE myfashionstudio;
-- DROP DATABASE minimal;


-- DESCRIBE user;
-- CREATE TABLE  IF NOT EXISTS user(
-- user_id INT PRIMARY KEY,
-- user_name VARCHAR(50),
-- user_mobile VARCHAR(50),
-- user_email VARCHAR(100),
-- user_address VARCHAR(50)
-- );

-- ALTER
	-- ADD
    -- MODIFY
    -- DROP
    -- RENAME

-- to add a column  

ALTER TABLE project_user
ADD whatsapp_no INT;

DESCRIBE project_user;

--  to modify a coloumn
ALTER TABLE project_user
MODIFY whatsapp_no VARCHAR(20);

DESCRIBE project_user;

-- to delete a coloumn
ALTER TABLE project_user
DROP whatsapp_no;

DESCRIBE project_user;

-- rename  
ALTER TABLE project_user
RENAME COLUMN dob TO date_of_birh;

DESCRIBE project_user;

DROP TABLE project_user;

DESCRIBE project_user;

-- read the table 

-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);


INSERT INTO project_user (username,first_name,last_name ,email,password,dob,phone,whatsapp_no)
VALUES 
('alagu','alagu','appan','alagu@gmail.com','123456','2005-05-13','123456712345','67891735627'),
('praveen','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('siva','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('ram','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('vinit','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('surya','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('bharath','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('revathi','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625'),
('lisha','bakya','lakshmi','bakya@gmail.com','97898','2005-05-23','1332123716','9789853625')
;

select*
FROM project_user;

UPDATE project_user
SET first_name = 'praveen'
WHERE username = 'praveen';

DELETE FROM project_user
WHERE username = 'siva';  

-- CREATE DATABASE IF NOT EXISTS countries;
-- use countries;
-- CREATE TABLE IF NOT EXISTS countries(

-- )

use exercise_hr;
SELECT DEPARTMENT_ID,DEPARTMENT_NAME
FROM departments
WHERE DEPARTMENT_NAME = "IT";

SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID = "60";

-- SELECT EMPLOYEE_ID,DEPARTMENT_NAME,FIRST_NAME
-- FROM  employees,departments
-- WHERE DEPARTMENT_NAME = "IT";

SELECT FIRST_NAME,DEPARTMENT_NAME
FROM employees INNER JOIN departments 
ON employees.DEPARTMENT_ID=departments.DEPARTMENT_ID
WHERE DEPARTMENT_NAME = "IT";

SELECT *
FROM employees AS e INNER JOIN departments AS d
ON e.DEPARTMENT_ID=d.DEPARTMENT_ID
WHERE DEPARTMENT_NAME = "IT";
-- GROUP BY DEPARTMENT_NAME 
-- ORDER BY count(DEPARTMENT_NAME);

select DEPARTMENT_ID,COUNT(*)
from employees
GROUP BY DEPARTMENT_ID;

SELECT e.EMPLOYEE_ID,m.manager_id,concat(e.FIRST_NAME,e.LAST_NAME) as "employee name",concat(m.FIRST_NAME,m.LAST_NAME) as "manager name"
from employees as e INNER JOIN employees as m
ON e.MANAGER_ID = m.employee_id





 







