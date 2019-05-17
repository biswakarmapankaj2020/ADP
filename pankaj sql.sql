/* Need MySQL Statements for the below queries:
1. Write a query to get all employee details from the employee table sort by first name, descending */

select * from employee order by first_name desc;

/* 2. Write a query to select first 10 records from a table. */

select * from employee limit 10;

/* 3. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary) */
 
 select first_name,last_name,salary,salary*15/100 as PF from employee;

/* 4. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range 
$10,000 through $15,000 and are in department 30 or 100. */

select first_name,last_name,salary from employee where salary not between 10000 and 15000 AND department_id IN (30, 100);

/* 5. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, 
and whose salary is not equal to $4,500, $10,000, or $15,000. */

select last_name,job_id,salary from employee where job_id in('Programmer','Shipping Clerk') AND salary not in(4500,10000,15000);

/* 6. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee 
whose last_name='Bull'. */

select first_name,last_name,salary from employee where salary >(select salary from employee where last_name='Bull');

/* 7. Write a query to find the name (first_name, last_name) of the employees who are managers. */

SELECT first_name, last_name FROM employee WHERE (Manager_ID IN (SELECT manager_id FROM department));

/* 8. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and
works in any of the IT departments. */

SELECT first_name, last_name, salary FROM employee WHERE department_id IN (SELECT department_id FROM department 
WHERE department_name LIKE 'IT%') AND salary > (SELECT avg(salary) FROM employee);

/* 9. Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary 
of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest. */

SELECT first_name,last_name,salary FROM employee WHERE salary >ALL(SELECT salary FROM employee WHERE job_id = 'SH_CLERK') ORDER BY salary;

/* 10. Write a query to list the department ID and name of all the departments where no employee is working. */

SELECT * FROM department WHERE department_id NOT IN (select department_id FROM employee);

/* 11. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London */

SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name FROM employee e 
JOIN department d ON (e.department_id = d.department_id) 
JOIN location l ON (d.location_id = l.location_id) 
WHERE LOWER(l.city) = 'London';

/* 12. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name). */

SELECT e.employee_id 'EmpId', e.last_name 'EmpName', m.employee_id 'MgrId', m.last_name 'ManName' FROM employee e 
join employee m ON (e.manager_id = m.employee_id);

/* 13. Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above 
average for their departments. */

SELECT employee_id, first_name FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);

/* 14. Write a query to display the department name, manager name, and city. */

SELECT d.department_name, e.first_name as manager, l.city FROM department d 
JOIN employee e ON (d.manager_id = e.employee_id) 
JOIN location l USING (location_id);

/* 15. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. */

SELECT job_title, first_name, salary-min_salary FROM employee NATURAL JOIN job;

/* 16. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers 
whose experience is more than 15 years. */

SELECT first_name, last_name, hiredate, salary, (DATEDIFF(now(), hiredate))/365 as Experience 
FROM department d JOIN employee e ON (d.manager_id = e.employee_id) 
WHERE (DATEDIFF(now(), hiredate))/365>15;

/* 17. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30' */

SELECT FIRST_NAME, HIREDATE FROM employee WHERE HIREDATE  BETWEEN '1987-06-01 00:00:00' AND '1987-07-30  23:59:59';

/* 18. Write a query to get the firstname, lastname who joined in the month of June. */

SELECT first_name, last_name FROM employee WHERE MONTH(HIREDATE)=6;

/* 19. Write a query to get the years in which more than 10 employees joined. */

SELECT DATE_FORMAT(HIREDATE,'%Y') FROM employee GROUP BY DATE_FORMAT(HIREDATE,'%Y') HAVING COUNT(EMPLOYEE_ID) > 10;

/* 20. Write a query to get the first 3 characters of first name from employees table. */

SELECT SUBSTRING(first_name,1,3) FROM employee;

