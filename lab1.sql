#LIST ALL THE DATABASES PRESENT
show databases;

#CREATING A DATABASE
create database lab1;

#SELECT WHICH DATABASE TO USE
use lab1;

#CREATING A TABLE
create table student_table(
   roll_number int,
   student_name varchar(30),
   date_of_birth date,
   gpa float,
   primary key(roll_number)
);

#DESCRIBE THE SCHEMA OF TABLE
desc student_table;

#INSERT VALUES INTO TABLE
insert into student_table values(1,'a','1975-06-16',9.6);
insert into student_table values(2,'b','1976-07-17',9.7);
insert into student_table values(3,'c','1977-08-18',9.8);
insert into student_table values(4,'d','1978-09-19',9.9);

#SHOW THE TABLE WITH ALL THE VALUES
select * from student_table;

create database temp;

show databases;

#DELETING THE DATABASE(THIS DELETES ALL THE TABLES PRESENT IN THE DATABASE TOO)
drop database temp;

use lab1;

select * from student_table;

update student_table set gpa=9.6 where roll_number=2;

alter table student_table add division varchar(20);

#ALTER THE SCHEMA OF THE TABLE(IT IS A DATA DEFINITION LANGUAGE (DDL) COMMAND)
alter table student_table drop division;

alter table student_table modify gpa double;

create table orders(
     order_id int not null,
     ordername varchar(70) not null,
     orderdate date not null,
     primary key(order_id),
     foreign key (order_id) references student_table(roll_number)
     );
     
desc orders;
 
 insert into orders values ('1','p','2002-06-16');
 insert into orders values('2','q','2003-07-17');
 insert into orders values ('3','r','2004-08-18');
 insert into orders values ('4','s','2005-09-19');
 
 select * from orders;
 
 
 

 
