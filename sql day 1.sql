show databases;

use sakila;

show tables;
 select * from actor;
 
 select first_name, last_name, 
 concat(first_name, last_name ) from actor;
 
  select first_name, last_name, 
 concat_ws(' ',first_name, last_name ) from actor;
 
 select first_name,substr(first_name, -4) from actor;
 
 
 select first_name,substr(first_name, 3) from actor;
 
 select first_name from actor
 where first_name=substr(first_name,1,2);
 
select first_name from actor
where first_name like concat("E", "%");

--  funcation (instr)

select first_name, instr(first_name,  "E")

from actor;

select first_name, instr(first_name,  "OP")

from actor;

-- instr(string , substring )

--  LOCATE (substr, str, pos)
--  penelope

select first_name, locate("E", first_name,3)
from actor;

-- substr => data extreact krna 
-- instr => char ko data mai search krna (index position )

select first_name, length(first_name)
from actor;

select first_name,  'hello' from actor;


select "hello" from dual ;

select 1+2 from dual;

select length("T") from dual;

-- jab hum length method use krte hai length return size of char return bytes 
-- the size of character in bytes 

select char_length("sde") from dual;

-- trim is going to remove spaces / character 

select "  hello" from dual;

select trim("   hello") from dual;

select length(trim("   hello   ")) from dual;



select trim(leading  " " from "    hello    ")
from dual;

select trim(leading  " " from "    hello    ")
from dual;

select trim(trailing " " from "  hello  " ) from dual;

select trim(trailing " " from "  hello  " ) from dual;

select trim(both " " from "   hello  " )from dual;



select trim(both " " from " he  llo   ") from dual;

select trim(both "x" from "xxxhello   ") from dual;

select trim(both "x" from "xxhelloxxxx  ") from dual;

-- lower upper 
-- concat cancat_ws
-- instr 
-- trim
-- str
-- substring 
-- length , instr , trim, locate , concat 


-- numeric funcation 
-- singsl row numeric funcation 

select 10 from dual;

select 11%1 from dual;


-- if decimal .5>  upper convert 
select round(11.4) from dual;

select round(11.9) from dual;

select round(12.4, 1) from dual;

select round(12.66, 1) from dual;

select round(12.648, 2) from dual;

-- (-1, -2) => before decimal value will round off 

select round(12.648, -1) from dual;

select round(51.648, -2) from dual;

select ceil(51.00001) from dual;

select floor(51.91) from dual;

select truncate(51.2342 ,3) from dual;

select truncate(51.2342 ,1) from dual;

select pow(2 ,3) from dual;

select power(2 ,3) from dual;

-- % round , floor , ceil ,truncate power 

-- string , numeric ( singal row funcation )

-- date funcation 


select now() from dual;

select curdate() from dual; -- only date

select curtime() from dual;  -- current time

select now() +2 from dual;

select curdate() +2 from dual; -- do'nt used this method 

select adddate(now(), interval 2 week ) from dual;

select adddate(now(), interval 2 month ) from dual;

select date_sub(now(), interval 2 day ) from dual;

show databases;
show tables;
 select * from actor;

select datediff('2024 - 03-22', curdate()) from dual;


select dayofweek('2024-03-19') from dual;

select dayofyear('2024-03-19') from dual;

select dayofweek('2024-03-19') from dual;

select year(last_upadate) from film_actor
where year(last_update)=2006;

select extract(month from '2022-09-18') from dual;

select from_date,
dayofmonth(datediff(now(),from_date)) from current_dept_emp;

select from_date,
timestampdiff(month, from_date, now())
from current_dept_emp;

select from_date,
timestampdiff(month, from_date, now())
from current_dept_emp;




















 


 