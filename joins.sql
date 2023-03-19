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



-- select DEPARTMENT_NAME
-- sum(NO.OF.DEPARTMENTS,NO.OF.UNIQUEDEPARTMENTS)

-- Write a query to find the name (first_name, last name), department ID and name of all the employees.

SELECT concat(FIRST_NAME,LAST_NAME) AS name,d.DEPARTMENT_ID
FROM employees as e INNER JOIN departments as d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.

SELECT  concat(FIRST_NAME,LAST_NAME) AS name,job_id,d.DEPARTMENT_ID,d.LOCATION_ID
FROM employees as e INNER JOIN departments as d 
ON e.location_id = d.DEPARTMENT_ID;


-- Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
select e.EMPLOYEE_ID,e.LAST_NAME,d.MANAGER_ID,d.LAST_NAME
FROM employees as e INNER JOIN employees as d 
ON e.manager_id = d.employee_id;

-- Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.

select concat(FIRST_NAME,LAST_NAME) as name,HIRE_DATE
FROM employees as e ;


-- Write a query to get the department name and number of employees in the department. (Requires GROUP BY)
select d.DEPARTMENT_ID,COUNT(FIRST_NAME) ,DEPARTMENT_NAME
FROM employees as e INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;
-- where  = "jones";

-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.



-- Find the CEO from the employee table.
select e.EMPLOYEE_ID,e.LAST_NAME,d.MANAGER_ID,d.LAST_NAME
FROM employees as e INNER JOIN employees as d 
ON e.manager_id = d.employee_id
WHERE d.manager_id is null;

