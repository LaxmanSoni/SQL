
use sakila;

select 1+2 from dual;

-- pseudo column
select curdate(), current_time(), current_timestamp() from dual;

select now() from dual;

select adddate( now(),3 );

select adddate( now(), interval 3 year );

select  date(now() );

select now(), 
month(now() ), date_format( now() , 'Year is %Y');


select curdate() from dual;

select  month( '09-17-24');

select str_to_date('09-17/2024', '%m-%d/%Y');
-- date diff



select * from payment;

select sum(amount) from payment;

select max(amount),max(staff_id),
 min(amount), avg(amount) from payment;
 
 select count(customer_id) from payment;
 select count(*) from payment;
 
 select customer_id from payment;
 
select distinct(customer_id) from payment;

select count(distinct(customer_id)) from payment;

select * from payment;
select count(*) from payment where customer_id=2;



select distinct(customer_id) from payment;

select customer_id, count(*) from payment 
group by customer_id;


select * from address;