use sakila;

select * from address;

select district, count(*) from address group by district
order by count(*) desc;

select district, count(*) from address 
group by district
having count(*) >5; -- in group by funcation don't use where 

select district, count(*) from address 
where city_id > 100
group by district having count(*)=2;

select district, count(*) from address 
where city_id > 100 and district = 'Alberta'
group by district ;

select * from address;

select count(address_id) from address;

select count(address2) from address;

select address_id, district, address_id+10+20 as "nl"
from address 
order by nl desc;

select * from address
order by  postal_code, district desc;


-- subquery 
-- query within a query 
 
 select first_name from actor where actor_id =2;
 
 select * from actor where first_name= 'NICK';
 
  select * from actor 
  where first_name= (select first_name from actor where actor_id =2);
  
 select * from payment;
 
 select amount,payment_id from payment 
 where amount = (select amount from payment where payment_id = 3);
 
 -- Q  the payment_id ,rental_id, amount, and payment_date where 
 -- the month of payment_id =5 
 select month(payment_date) from payment where payment_id =5;  
 
 select * from payment 
 where month(payment_date) =  
 (select month(payment_date) from payment where payment_id =5); 
 
 
 -- Q. what are the type of subqureys
 -- Q. what are the type of keys
 

 
 
 
 
 
 









