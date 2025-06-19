# Creation of Databas
create database Assignment3;
use Assignment3;
select * from emp_record;
#Find the average salary of employees in each department. 
Select department,avg(salary) from emp_record group by department;
#Find the total number of employees hired after 2019. 
SELECT count(emp_id) as total_emp_hired from emp_record where hire_date>'2019';
# List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department,sum(salary) from emp_record group by department;
# Find the highest salary in the Finance department. 
SELECT first_name, last_name, salary,department from emp_record order by department asc LIMIT 1; 
 #Get the top 3 highest-paid employees. 
SELECT first_name, last_name, salary,department from emp_record order by salary DESC LIMIT 3;
#Find the department with the minimum average salary.   
select department,min(salary) from emp_record group by department order by min(salary) limit 1;
#7. Display the total number of employees in each department, ordered by the number of employees. 
select department,count(emp_id) from emp_record group by department order by count(emp_id);
#Find the average salary of employees who were hired before 2020.  
select count(emp_id) as emp_join_before_2020,avg(salary) from emp_record where hire_date<2020;
#List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
select first_name,last_name,department from emp_record where (department='it') order by hire_date desc limit 1;
#Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
select sum(salary) as total_salary from emp_record where hire_date>'2019-01-01';
#11. Get the employee with the lowest salary in the HR department. 
select emp_id,first_name,last_name,department,salary from emp_record where department='hr' order by salary limit 1;
#12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  
SELECT department, sum(salary) as total_paid from emp_record group by department order by total_paid desc limit 2;
#List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select first_name,last_name,salary from emp_record where(hire_date>2018)order by salary limit 4;
#14. Find the highest salary in the IT department, but limit the results to the top 1 result
select first_name,last_name,department, salary as highest_salaried from emp_record where (department='it') order by highest_salaried desc limit 1;
#Get the average salary of employees in each department and list only departments with an average salary greater than 60,000.
select department,avg(salary) as avg_salary from emp_record group by department having avg_salary>60000;

