show databases;
create database lab4;
use lab4;

create table marks(
    subject1 int,
    subject2 int,
    subject3 int
);

insert into marks values(10,20,30);
insert into marks values(50,50,50);
insert into marks values(40,40,40);

select * from marks;

delimiter //

create function cal_marks(m1 int , m2 int , m3 int)
returns varchar(20) deterministic
begin
declare marks1,marks2,marks3 int;
declare percentage double;
declare grade varchar(20);

set marks1 = m1, marks2=m2, marks3=m3;

set percentage = ((m1+m2+m3)/150)*100;

if (percentage>=90) then 
set grade='Distinction';

elseif (percentage>=80 and percentage<90) then 
set grade='A';

elseif (percentage>=70 and percentage<80) then 
set grade='B';

elseif (percentage>=60 and percentage<70) then 
set grade='C';

elseif (percentage>=50 and percentage<60) then 
set grade='D';

elseif (percentage<50) then 
set grade='Fail';

end if;

return (grade);

end//

select subject1,subject2,subject3,cal_marks(subject1,subject2,subject3) as result from marks;
