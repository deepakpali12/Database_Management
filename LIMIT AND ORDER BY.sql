#Create a database named company and a table named employees with the following fields:
create database company1;
use company1;
create table employees
(Emp_id INT Primary Key auto_increment,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL(10,2),
date_of_joining DATE);
#Insert the following data into the employees table:
INSERT INTO employees(Emp_id,name,position,salary,date_of_joining)values
(1,'John Doe', 'Manager', 55000.00, '2020-01-15'),
(2,'Jane Smith', 'Developer', 48000.00, '2019-07-10'),
(3,'Alice Johnson','Designer', 45000.00, '2021-03-22'),
(4,'Bob Brown','Developer', 50000.00, '2018-11-01');
# A query to retrieve all employees who are Developer.
select* from employees where position='developer';
# A query to update the salary of Alice Johnson to 46000.00.
update employees set salary =46000.00 where name='alice johnson';
# A query to delete the employee record for Bob Brown.
delete from employees where name='bob brown';
#A query to find the employees who have a salary greater than 48000.
select* from employees where salary>48000.00;
# A query to add a new column email to the employees table.
alter table employees
add email varchar(35);
# A query to update the email for John Doe to john.doe@company.com
update employees set email='john.doe@company.com' where name='john doe';
# A Write a query to retrieve only the name and salary of all employees.
select name,salary from employees;
# A query to count the number of employees who joined after January 1, 2020.
select count(*) from employees where date_of_joining>'2020-01-01';
# A query to order the employees by salary in descending order.
select * from employees order by salary desc;
# A query to drop the email column from the employees table.
alter table employees
drop column email;
#  A query to find the employee with the highest salary.
select * from employees order by salary desc limit 1;







