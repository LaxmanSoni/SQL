select * from actor;

select first_name, lower(first_name)
from actor;

-- dummy table
select 1+2 from dual;

select length('hey') from dual;

-- substring 

select first_name, substr(first_name,3)  from actor;

select first_name, substr(first_name,-3)  from actor;

select first_name, instr(first_name,'e')  from actor;

select first_name, concat(first_name, ' ',last_name)  from actor;

select first_name,last_name, concat_ws('-', 'MR',first_name, last_name)  from actor;

-- ltrim, rtrim, trim

select trim('  hey ') from dual;

select length(trim(' hey   ')) from dual;

select trim(leading ' ' from '    hey ') from dual;

select trim(trailing ' ' from '    hey ') from dual;

select trim(both 'h' from '    hey  hhhh ') from dual;

select trim(both 'p' from first_name) from actor;

-- lpad rpad 
select  first_name , lpad(first_name,5,'#') from actor;

-- rpad
select  first_name , rpad(first_name,5,'#') from actor; 


-- numeric funcation

select round(12.43) from dual;

select round(12.4365,2) from dual;

select truncate(12.4365,2) from dual;

select mod(125,5) from dual;

select mod(11,5) from dual;

/*
string funcation 
numeric
date
general
*/

-- Flow Control Operators
-- Case , if() , ifnull(), nullif()
select first_name, if(first_name = "NICK",'yes','NO')
from actor;

select first_name,actor_id, substr(first_name,1,1), if(substr(first_name,1,1)
="J", actor_id+10, actor_id+15) as new_actor_id
from actor;

-- if(condtion, True, Flase)
-- if(condition , true, if(condition, True, False)) -> nested if 

-- case statement 
/* 
select col, 
	case experssion
    when value then work 
    when value then work 
    end
    from table;
*/

select actor_id,first_name,
	case first_name
    when 'NICK' then actor_id + 10
    else actor_id
    end as 'NewId'
	from actor;


-- Q if actor_id > 10 than print best if actor_id > 20 and actor_id <=30 than
-- print very best if actor id 30-50 print excilent and above 50 than print good luck 
-- otherwish return same actor_id

select actor_id, 
	case actor_id
    when actor_id < 10 then 'best '
    when actor_id > 10 and actor_id <20 then 'very best'
    when actor_id > 20 and actor_id < 30 then 'excilent'
    when actor_id > 30 and actor_id < 50 then 'very excilent'
    else actor_id 
    end as "New_Actor_id"
    from actor;
    
    
    -- nullif(exp1,exp2)
    select first_name, last_name, 
    nullif(length(first_name),4)
    from actor;
    
	select first_name, last_name, 
    ifnull(length(first_name),4)
    from actor;
    
    select address_id, address2,
    coalesce(address2, address_id,10) from address;
    
    






