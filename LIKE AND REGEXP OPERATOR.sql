# SQL_ASSIGNMENT_2 NAME-DEEPAK PALI , 

# Create a database named library and a table named books with the following columns
create database library;
use library;
create table books(
Id INT Primary Key ,
Titel VARCHAR(255),
Author VARCHAR(100),
Publish_year year,
Genre VARCHAR(100));
# Insert the following book records into the books table:
# Note insert method done by table data import wizard
# A query to select all books where the title starts with the letter 'T' using the LIKE operator
select * from books where title like "t%";
# A query to find all books where the author's last name ends with 'son' using the LIKE operator.
select * from books where author like "%son";
# A query to find all books where the title contains the word 'and' using the LIKE operator.
select * from books where title like '%and%';
# A query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select * from books where title like '%bird';
# A query to find all books where the title has exactly 3 characters using the REGEXP operator.
select * from books where title regexp '^.{3}$';
# A query to select all books where the title contains a number using the REGEXP operator.
select * from books where title regexp '[0-9]';
#A query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select * from books where author regexp '^[A-J]';
# A query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre regexp 'fiction|Adventure';
# A query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from books where title regexp '[A-Z]';
# A query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where publish_year like '1800' or '1950';
# A query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
select * from books where author regexp '^[A-Za-z]+ [A-Za-z]+$';
# A query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where title regexp '^[p]' or '^[A-Za-z]+ [A-Za-z]+$';
# A query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from books where title regexp '!'|'@'|'#';
