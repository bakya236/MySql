-- SQL is case insensitive
-- will follow

-- uppercase:keywords
-- lowercase :non keywords
-- USE exercise_hr;

-- show tables;



-- USE store;
-- select*
-- FROM customers
-- -- ORDER BY first_name;
-- ORDER BY last_name desc;

-- USE exercise_hr;
-- select*
-- FROM employees

-- -- ORDER BY <column_name_1>ASC/DESC;
-- ORDER BY FIRST_NAME DESC;

-- select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM employees
-- ORDER BY salary ASC;


-- ORDER BY <column_name_1>ASC/DESC,<column_name_2>ASC/DESC,<column_name_3>ASC/DESC 

-- USE store;
-- SELECT*
-- FROM customers
-- ORDER BY last_name DESC, birth_date ASC ;

-- SELECT 1,2 ;

-- SELECT 1+2 ;


-- SELECT 100 - 50/2   AS VALUE ;

-- SELECT first_name,last_name,points FROM Customers;

-- USE store;
-- SELECT birth_date FROM customers;

-- -- SELECT timestampdiff(YEAR,birth_date,CURDATE())  AS age

-- SELECT DATEDIFF(NOW(),birth_date),"%Y"+0  AS age
-- FROM customers;


-----------
-- work 7/08

USE exercise_hr;
-- SELECT FIRST_NAME "First Name", LAST_NAME "Last Name" 
-- FROM employees;

------------
-- USE exercise_hr;
-- SELECT first_name,last_name,salary, (15/100 *salary)as PF
-- FROM employees;

-------------
-- USE exercise_hr;
-- SELECT distinct DEPARTMENT_ID
-- FROM employees
--------------
USE store;
SELECT *
FROM customers
WHERE points > 3000;

---------------
SELECT *
FROM customers
WHERE state = "FL";

------------------
USE store;
SELECT *
FROM customers
WHERE  birth_date > "1990-01-01";
---------------

SELECT *
FROM customers
WHERE state = "FL" AND birth_date > '1990-01-01';

------------
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 3000;

------------

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > '3000' AND state = 'VA';

---------------

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points < '4000' AND state = 'VA';

SELECT *
FROM customers
WHERE  points < 4000 OR birth_date >= '1990-01-01' AND state = 'VA';

SELECT *
FROM customers
WHERE  points < 4000 AND birth_date >= '1990-01-01' OR state = 'VA';

SELECT *
FROM customers
WHERE NOT(state = "FL");

-- WHERE ( points < 4000 AND birth_date >= '1990-01-01')   OR state = 'VA'; true then false

-- ORDER OF THE LOGICAL OPERATORS
-- 1.AND
-- 2.OR
-- 3.NOT

-- work 8/08
USE exercise_hr;
SELECT FIRST_NAME,LAST_NAME
FROM employees
WHERE HIRE_DATE = 1987;

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM employees
WHERE  SALARY != 10000 <= 15000;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID
FROM employees
WHERE  DEPARTMENT_ID IN (30,100);

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM employees
WHERE  (SALARY != 10000 <= 15000 and DEPARTMENT_ID);

SELECT LAST_NAME
FROM employees
WHERE LAST_NAME IN ('BLAKE', 'SCOTT', 'KING','FORD');

USE store;
select*
FROM customers
WHERE state IN ('FL','VA','GA');

select*
FROM products
WHERE quantity_in_stock IN (49,38,72);

select*
FROM customers
WHERE birth_date between '1990-01-01' AND '2000-01-01';
-----------------
select*
FROM customers
WHERE points >= 3000 and points <= 10000;

select*
FROM customers
WHERE pointS BETWEEN 3000 AND 10000;
------------------

--------------
use store;

-- select orders
-- WHERE NOT( orders = shippes);
-- order_items based on Total price in descending order


select unit_price
from order_items;


-- all customers living in state ending in A

select *
from customers
WHERE state LIKE "%A";

select *
from customers
WHERE state LIKE "_A";

select *
from customers
WHERE last_name LIKE "B____Y";

select *
from customers
WHERE last_name LIKE "B%Y";

-- REGEXP ALTERNATE FOR  LIKE
select *
from customers
WHERE last_name  REGEXP "age";

select *
from customers
WHERE last_name  REGEXP "field$|^mac";

----------------

USE store;
-- quantity in stock equal to 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

SELECT *
FROM products
WHERE  quantity_in_stock = 72 ;

-- between 1/1/1990 and 1/1/2000

SELECT *
FROM customers
WHERE birth_date between"1990-01-01"AND"2000-01-01";

---------------------
select *
FROM customers
WHERE address LIKE ('%trail%'|'%avenue%');


select *
FROM customers
WHERE  phone LIKE ('%9');

select *
FROM customers
WHERE NOT phone LIKE ('%9');

-------------------

select *
FROM customers
WHERE first_name = 'elka' or first_name = 'ambur';

select last_name
FROM customers
WHERE last_name LIKE ('%ey') OR last_name LIKE ('%ON');
-- WHERE last_name LIKE ('%ey','%ON');

select last_name
FROM customers
WHERE last_name LIKE ('my%') OR last_name LIKE ('%SE%');
-- WHERE last_name LIKE ('my%'|'%SE%');


-- last names contains B followed by R or U-- 
select last_name
FROM customers
WHERE last_name LIKE ('%BR%') OR last_name LIKE ('%BU%'); 

-- SELECT name FROM student_tbl WHERE name REGEXP '[b-g].[a]' ;



-- OR last_name LIKE ('%B%  U') ;


---------------
---------------
use exercise_hr;

SELECT FIRST_NAME
FROM employees
WHERE FIRST_NAME LIKE ('%B%') AND FIRST_NAME LIKE ('%C%');
-- WHERE FIRST_NAME REGEXP ('B') AND  FIRST_NAME REGEXP ('C') ;
-- WHERE FIRST_NAME REGEXP ('B'&&'C') ; TO DO 

SELECT LAST_NAME
FROM employees
WHERE LAST_NAME LIKE '_____E';

SELECT LAST_NAME
FROM employees
WHERE LAST_NAME LIKE '__E';

--------------

use store;

SELECT *
FROM customers
WHERE last_name regexp 'ae|be|ce|de|ee|fe|ge|he';

SELECT *
FROM customers
WHERE last_name regexp '[abcdefgh]e';

SELECT *
FROM customers
WHERE last_name regexp '[a-h]e';

SELECT *
FROM customers
WHERE last_name regexp 'ge|ie|me';

SELECT *
FROM customers
WHERE last_name regexp '^.{6}$';

select *
FROM customers
WHERE last_name regexp ('b.*[r|u]');

select *
FROM customers
WHERE last_name regexp ('b.*[r|u]');


------------
use exercise_hr;

select *
FROM employees
WHERE LAST_NAME like '%b%r%' or  last_name like '%b%u%';

select *
FROM employees
WHERE last_name regexp ('b.*[r|u]');

use store;
select *
FROM customers
WHERE place is null;

use store;
select *
FROM customers
WHERE phone is null;

-- get 3 customers by points in desc
select *
FROM customers
order by points desc
limit 3;


-- get customers on page 2
select *
FROM customers
order by points desc
limit 3,3;

-- Get the orders that are not shipped
use store;
select *
FROM customers
WHERE phone is not null;

EXPLAIN
SELECT *
FROM customers;

 USE exercise_hr;
 EXPLAIN
 SELECT*
 FROM employees
WHERE FIRST_NAME = "LEX";







