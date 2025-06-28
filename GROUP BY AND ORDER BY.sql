Creation of Database
 
create database Assignment3;

use Assignment3;

select * from emp_record;

Find the average salary of employees in each department.
 
Query- Select department,avg(salary) from emp_record group by department;

Find the total number of employees hired after 2019. 
 
Query- SELECT count(emp_id) as total_emp_hired from emp_record where hire_date>'2019';

List the departments and the total salary of all employees in each department, ordered by the total salary. 
 
Query- select department,sum(salary) from emp_record group by department;

Find the highest salary in the Finance department. 
 
Query- SELECT first_name, last_name, salary,department from emp_record order by department asc LIMIT 1; 

Get the top 3 highest-paid employees. 
  
Query- SELECT first_name, last_name, salary,department from emp_record order by salary DESC LIMIT 3;

Find the department with the minimum average salary.   
 
Query- select department,min(salary) from emp_record group by department order by min(salary) limit 1;

Display the total number of employees in each department, ordered by the number of employees. 
 
Query- select department,count(emp_id) from emp_record group by department order by count(emp_id);

Find the average salary of employees who were hired before 2020. 
 
Query- select count(emp_id) as emp_join_before_2020,avg(salary) from emp_record where hire_date<2020;

List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
 
Query- select first_name,last_name,department from emp_record where (department='it') order by hire_date desc limit 1;

Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
 
Query- select sum(salary) as total_salary from emp_record where hire_date>'2019-01-01';

Get the employee with the lowest salary in the HR department. 
 
Query- select emp_id,first_name,last_name,department,salary from emp_record where department='hr' order by salary limit 1;

Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments. 
 
Query- SELECT department, sum(salary) as total_paid from emp_record group by department order by total_paid desc limit 2;

List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
 
Query- select first_name,last_name,salary from emp_record where(hire_date>2018)order by salary limit 4;

Find the highest salary in the IT department, but limit the results to the top 1 result.
 
Query-select first_name,last_name,department, salary as highest_salaried from emp_record where (department='it') order by highest_salaried desc limit 1;

Get the average salary of employees in each department and list only departments with an average salary greater than 60,000.
 
Query- select department,avg(salary) as avg_salary from emp_record group by department having avg_salary>60000;

