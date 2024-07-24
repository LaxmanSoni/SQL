-- constranint => condition => table => unwanted restrict 
-- constraint are used to specify rules for the data in a table. 
-- the following contrant are  comanly used in sql 
/*
NOT NULL 
UNIQUE 
PRIMARY kEY 
fOREIGN KEY 
CHECK 
DEFAULT
create INDEX ETC. 
*/


create database test2;

use test2;

create table student(sid int, email char(20));

insert into student values(3,"abhisheck");
select * from student;

create table student2(sid int not null, email char(20));

insert into student2 values(3, "abhisheck");
select * from student2;

# defalut 
create table student3(sid int, sname varchar(20) default "regex");
insert into student3(sid) values(10);
select * from student3;

-- unique
create table student4(sid int, sname varchar(20) unique);
insert into student4(sid,sname) values(10,"aman");
insert into student4(sid,sname) values(10,"aman"); -- <<
select * from student4;

-- primary key 
-- unique identifire => eeach record from a table 
-- query optimize
-- unique and not null 
create table student5(sid int primary key, sname varchar(20) default "regex");
insert into student5(sid,sname) values(10, "aman");
insert into student5(sid,sname) values(11,"aman");
insert into student5(sid,sname) values(12);
select * from student5;

-- check => condition according 

create table yash(id int check(id > 5));
insert into yash values(1);
select * from yash;

create table yash1(name varchar(20) check(name = reverse(name)));
insert into yash1 values("naman");

select * from yash1;





