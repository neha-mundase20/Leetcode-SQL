show databases;

create database lab2;

use lab2;

create table employee (
emp_id int not null,
emp_name varchar(20) not null,
emp_age int not null,
emp_gender varchar(6) not null,
emp_salary double not null,
primary key (emp_id) 
);

desc employee;

insert into employee values (568,'Aradhya',25,'female', 25000);
insert into employee values (432,'Namasvi',22,'female', 20000);
insert into employee values (342,'Vivaan',26,'male', 24600);
insert into employee values (982,'Shaarvi',25,'female', 22500);

select * from employee;

#USING COMPARISON OPERATORS

select * from employee where emp_salary>20000;

select * from employee where emp_salary>=20000;

select * from employee where emp_salary<=20000;

select * from employee where emp_salary!=20000;

update employee set emp_salary=emp_salary+2000 where age>22;

#ADDED A NEW COLUMN EMP_ALLOWANCE

alter table employee add emp_allowance double;

update employee set emp_allowance = 5000 where emp_salary > 20000;

update employee set emp_allowance = 7000 where emp_salary <= 20000;

#USING ARITHMETIC OPERATORS

select emp_id, emp_name from employee where (emp_salary - emp_allowance) > 20000;

select emp_id, emp_name from employee where (emp_salary - emp_allowance) <= 20000;

#ASCENDING AND DESCENDING ORDERING

select * from employee order by emp_name asc;

select * from employee order by emp_age desc;

#USING LOGICAL OPERATORS

select * from employee where emp_gender='female' and emp_salary>20000;

select * from employee where emp_gender='female' or emp_salary>22000;

/*SQL aggregation function is used to perform the calculations on multiple rows of a single column of a table. It returns a single value.
It is also used to summarize the data.*/

#AVG AGGREGATE FUNCTION
/*The AVG function is used to calculate the average value of the numeric type.
 AVG function returns the average of all non-Null values.*/

select avg(emp_salary) from employee;

#MAX AGGREGATION FUNCTION

/*MAX function is used to find the maximum value of a certain column. 
This function determines the largest value of all selected values of a column.*/

select max(emp_salary) from employee;

#MIN AGGREGATION FUNCTION 

/*MIN function is used to find the minimum value of a certain column. 
This function determines the smallest value of all selected values of a column.*/

select min(emp_salary) from employee;

select min(emp_salary) from employee where emp_gender='female';

#SUM AGGREGATION FUNCTION

/*Sum function is used to calculate the sum of all selected columns.
 It works on numeric fields only.*/
 
 select sum(emp_salary) from employee;
 
 select sum(emp_salary) from employee where emp_gender='female';
 
#COUNT AGGREGATION FUNCTION
/*COUNT function is used to Count the number of rows in a database table. 
It can work on both numeric and non-numeric data types.
COUNT function uses the COUNT(*) that returns the
count of all the rows in a specified table. 
COUNT(*) considers duplicate and Null.*/

#count number of all entry rows
select count(*) from employee;

#count number of emp_id entry rows
select count(emp_id) from employee;








