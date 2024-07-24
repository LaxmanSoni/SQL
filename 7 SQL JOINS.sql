create table products(pid int, pname varchar(29));
insert into products(pid, pname)  
values(10,"mobile"),(11, "apple"), (12,"TV");

select * from products;

create table orders(oid int, ordername varchar(29),id int);
insert into orders(oid, ordername, id)  
values(10,"mobile",1),(11, "apple",2), (12,"TV",3);

select * from orders;
select * from products;

select oid, ordername, id, pname from orders join products
where (orders.oid = products.pid);

-- cross join
select oid, ordername, id, pname from orders join products;
 
 -- inner join 
 -- inner join means take comman value in both column
 
select oid, ordername, id, pname from orders join products
where (orders.oid = products.pid);

-- using clause

#select oid, ordername, id, pname from orders join products
#using (orders.oid = products.pid); -- <need to both column are same

-- on claue
select oid, ordername, id, pname from orders inner join products
on (orders.oid = products.pid); -- < same like inner join 

-- left join
select oid, ordername, id, pname from orders left join products
on (orders.oid = products.pid); 

use sakila;

select * from actor;
select * from film_actor; 

select actor.actor_id, actor.first_name,film_actor.actor_id, film_actor.film_id
 from actor join film_actor
where(actor.actor_id = film_actor.actor_id);

select * from film;
select * from film_actor;

select  f.film_id,fm.title from film as fm join film_actor as f
where(f.film_id = fm.film_id);

select a.actor_id, fa.film_id, film.title from actor as a join film_actor as fa 
join film
where(a.actor_id=fa.actor_id) and (fa.film_id = film.film_id);

select* from actor;
select * from film_actor;

select ac.actor_id,count(*), ac.first_name, fa.film_id from actor as ac 
join film_actor as fa
where(ac.actor_id = fa.actor_id)
group by actor_id;


-- self join
use test2;
create table regex_emp(id int, name varchar(29), mid int);
insert into regex_emp values(1,"tuasr", null),
(2,"aman",3),(3,"nanina",1);

select * from regex_emp;

select emp.id, emp.name, emp.mid from regex_emp as emp
join regex_emp as manager
where(emp.mid = manager.id);

























