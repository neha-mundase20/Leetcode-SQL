show databases;

use procedures;

delimiter //

create procedure cal_sum()
begin
declare a,b,c int ;
set a=19, b=20;
set c = a+b;
select a,b,c as sum;
end//

call cal_sum();
