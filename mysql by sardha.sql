create database temp2;

drop database temp2; -- for delete database 

use sakila;

-- creating table 

create table test1(
 id Int primary key,
 name varchar(50),
 age int not null
 );
 
 insert into test1 values(1,"aman",26);
 insert into test1 values(2,"laxman",22);
 
 select * from test1;
 
 create database if not exists test1;
 
 drop database if exists temp2;
 show databases;
 
 
 -- Q create a db for your company named xyz. 
 
 create database xyz;
 
 create table info (
 ID int primary key,
 Name varchar(50),
 amount int not null
 );
 
 insert into info values (1,"adam", 25000);
 insert into info values (2,"bob",30000);
 insert into info values(3,"casey",40000);
 
 select * from info;
 
 insert into info 
 (id, name , amount )
 values 
 (4,"laxman", 1000000),
 (5,"raj", 50000);
 
 select *  from info ;
 
 -- Constraints 
 -- sql constraints are used to specify rules for data in a table 
 
 -- ex:- Not Null 
 -- unique 
 -- primary key 
 
 create database temp1;
 create table test2(
 id Int unique
 
 );
 
 
 insert into test2 values(10);
insert into test2 values(100);
 
 select * from test2;
 
 -- check
 create table city (
 id int primary key ,
 city varchar(50),
 age Int,
 constraint age_check check (age >= 18 and  city= "Delhi")
 
 );
 
 
 -- where clause 
 -- using Operators in where 
 
 -- Arithmetic Operators :- +, -, *,/ ,%
 
 -- comparison operators: =,!=,>,>= ,< ,<=
 
 -- logical operator : and  or not in betwwen , all , like , any 
 
 -- bitwise operators : & (bitwise AND),  | (bitwise or)
 
 select * from info;
 
 select * from info
 where amount > 2000 and name = "adam"; 
 
  select * from info 
 where amount > 2000 or name = "adam"; 
 
 
  select * from info 
 where amount between 30000 and 50000;
 
select * from info 
where amount in (30000, 50000); 

-- Limit clause \

-- sets an upper limit on number of (tuples) rows to be returned

select * from info 
limit 3;

select * from info 
where amount > 20000
limit 2;

-- order by Clause 
-- to sort in ascending (asc) or descending order (desc)

select * from info 
order by amount asc;

select * from info 
order by amount desc;

select * from info 
order by name asc;


-- Aggregate Funcation 
-- aggregate funcation perform a calculation on a set of values, and return a singal value.
-- count()
-- max()
-- min()
-- sum()
-- avg()

select max(amount) from info;

select avg(amount) from info;

select count(amount) from info;

select mini(amount) from info;

-- Group by Clause 
-- Group rows that have the same values into summary rows.
-- it collects data from multiple records and groups the result by one or more column

-- * Generally we use group by with some agregation funcation. 

select name, count(amount)
from info
group by name;

-- Practice Qs
-- write the Query to find avg amount in each name in ascending order.

select name, avg(amount)
from info
group by name
order by  name asc;

-- HAVING CLAUSE
-- Similar to where i.e applies some condition on row.
-- Used when we want to apply any condition after grouping .
-- Count number of students in each city where max marks cross 90.

-- GENERAL ORDER 

-- SELECT column(s)
-- from table_name
-- where condition 
-- group by coulumn 
-- having condition 
-- order by column asc;


select count(amount) from info
group by name
having amount > 20000;

-- table related Queries 

update info 
set amount = 25000
where amount = 30000;

select * from info; 

-- alter 
-- to change the schema 
-- use  aad column  drop column  rename column  change column modify column 


alter table info
add column age int not null default 19 ;

select * from info;

alter table info
modify age varchar(2);

select * from info;

alter table info 
change age age_st int;

select * from info;

alter table info 
drop column age_st ;

select * from info;

alter table info rename to emp;

select * from emp;
 
 -- truncate delete only data belomgs to tABLE 
truncate TABLE emp;

select * from emp;

-- practics Qs 

create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees(dept, salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500),
("hr",200),("hr",200),("hr",50),("marketing",200);
select * from employees;

alter table employees
change dept department varchar(50);

select * from employees;

delete from  employees
where salary < 80;

alter table employees
drop column salary;

select * from employees;


-- joins in Sql
-- join is used to combine rows from two o more table , based on a releated column between them.
-- Types of joins 
-- inner join ,left join , right join , full join  

create table course (
id int primary key ,
course varchar(50)
);

insert into course(id, course)
values (102,"english"),
(103, "python");

select * from course;

select * from employees
inner join course
on employees.id = course.id;

select * from employees;

select * from employees
 left join course
on employees.id = course.id;

select * from employees as a
right join course as b
on a.id = b.id;

-- Full join 


select * from employees
left join course
on employees.id = course.id
UNION
select * from employees as a
right join course as b
on a.id = b.id;

-- LEFT EXCLUSIVE JOIN & RIGHT EXCLUSIV JOIN 
select * from employees
left join course
on employees.id = course.id
WHERE course.id is null;

select * from employees
right join course
on employees.id = course.id
WHERE course.id is null;

-- self join 
select * from 
employees as a 

-- SQl Sub Queries 



-- sql View 
create view view1 as 
select id, 

























 
 
 
 
 
 
 
 