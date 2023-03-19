-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
USE exercise_hr;

SELECT concat(FIRST_NAME,LAST_NAME) as name,d.DEPARTMENT_ID as 'department ID',DEPARTMENT_NAME as 'department name'
FROM employees as e INNER JOIN departments as d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job
SELECT JOB_TITLE,concat(FIRST_NAME,LAST_NAME) as name,MAX_SALARY-MIN_SALARY as salary,MIN_SALARY
FROM employees as e INNER JOIN jobs as b;


-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90
-- SELECT 

select EMPLOYEE_ID,JOB_TITLE, END_DATE-START_DATE AS days,DEPARTMENT_ID
FROM job_history as h  inner JOIN jobs as j
on h.job_id = j.job_id
WHERE DEPARTMENT_ID = 90;

-- other way using  natural jobs- it automatically selects only 

select EMPLOYEE_ID,JOB_TITLE, END_DATE-START_DATE AS days
FROM job_history NATURAL JOIN jobs 
WHERE DEPARTMENT_ID = 90;


select *
FROM job_history as h JOIN jobs as j
on h.job_id = j.job_id
WHERE DEPARTMENT_ID = 90;

-- Write a query to get the department name and average salary in the department. 
SELECT DEPARTMENT_NAME AS "department name",avg(SALARY) AS "salary"
FROM departments as d JOIN employees as e
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME;


-- Write a query to display the department name, manager name, and city.
SELECT d.DEPARTMENT_NAME AS "department name",m.FIRST_NAME
FROM departments as d INNER JOIN employees as m
ON d.MANAGER_ID = m.EMPLOYEE_ID;



