USE exercise_hr;
-- Write a query to get the total salaries payable to employees.

select sum(salary)
from employees;

-- Write a query to get the maximum and minimum salary from employees table.

select max(salary),min(salary)
from employees;

-- Write a query to get the average salary and number of employees in the employees table.

select avg(salary),count(EMPLOYEE_ID)
from employees;

-- query to count and change the column name
select count(EMPLOYEE_ID) as 'no.of.employees'
from employees;

-- Write a query to get the number of employees working with the company.
select count(EMPLOYEE_ID) 
from employees;

-- Write a query to get the number of distinct jobs available in the employees table.

select 
distinct count(JOB_TITLE)
from jobs;

-- Write a query get all first name from employees table in upper case.

select upper(FIRST_NAME)
from employees;

-- Write a query to get the first 3 characters of first name from employees table.

select upper(FIRST_NAME)
from employees
where FIRST_NAME like '___';

-- Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.

select concat(FIRST_NAME,LAST_NAME) as 'fullname'
from employees;

-- Write a query to get the length of the employee names ('<first name> <last name>') from employees table.

select length(concat(FIRST_NAME,LAST_NAME)) as 'fullname'
from employees;

-- Write a query to get monthly salary (round 2 decimal places) of each and every employee

select first_name,round(salary/12,2) as 'monthly salary'
from employees;

-- where salary/12;

-- Note : Assume the salary field provides the 'annual salary' information.

select count(DEPARTMENT_NAME) AS "NO.OF.DEPARTMENTS"
from departments
group by "NO.OF.DEPARTMENTS";

SELECT
DISTINCT count(DEPARTMENT_NAME) AS "NO.OF.UNIQUEDEPARTMENTS"
from departments;








