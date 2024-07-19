-- type of database 
-- dbms vs rdbms 
-- mysql vs sql 

-- Dql

show tables;

select * from actor;

select *from actor where actor_id=3;

-- where operator (between )

select * from actor where actor_id between 5 and 3;

select * from actor where actor_id in (5,3,3);

select * from actor where actor_id in ("NICk", 'JOHN');

select * from actor where first_name = 'ED';

-- like operator 
select * from  actor where first_name like 'E%'; 
-- (E% => (zero or more character))

select * from actor ;

select * from  actor where first_name like 'ED%';

select * from  actor where first_name like '%E'; -- %E it's means the last char is E 

-- Q. G is first and a is 3rd position 
-- use the _ 

select * from  actor where first_name like 'G_A%';

select * from  actor where first_name like 's__s%';

select * from  actor where first_name like '%A_D';

-- Q first later s & atlist 3char 
-- Q last char d
-- Q ,imi,u, 5 char and the seconed later is c 
-- Q actor_id and first_name based on the last name column there the seconed latter is i and the last seconed char m


select * from actor where actor_id not in ("NICk", 'JOHN');

select * from actor where actor_id in (1,2,3,4,5,6,7,8)
and first_name like 'E% ';

select * from actor ;
-- Q i need to get the complete details where the first name is JENNIFER OR PENELOPE AND ACTOR ID IS more than 2 

select * from actor where first_name in ("PENELOPE" , 'JENNIFER')
AND actor_id > 2;




