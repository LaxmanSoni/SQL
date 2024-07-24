 -- Data type of SQl  
 # numeric string data, date time 
 -- int(numerical)
 
 -- Int [(width ) [UNSIGNED] [ZERFILL])
 -- 4 byte (1-8) 2^32
 
-- 2^32
-- -2,147, 483,648, to 2,147, 483, 647 (4 byte storage )

create database regex1;
use regex1;


create table student(roll_no int);
insert into student values(19);

select * from student;

create table student1(roll_no int unsigned);
insert into student1 values(19);

select * from student1;

create table student2(roll_no int(5) zerofill);
insert into student2 values(1912);

select * from student2;

-- mediumint : 3byte small : 2 byte, tiny:1 byte 
-- int : 4 byte , big int 8 byte

-- char vs varchar 
-- char(4) -> in char a fix length 
# varchar(variable character) varchar(4) 

-- Q. what is difference between argws & kwargs
-- Q. dbms vs Rdbms 
-- Q mysql vs sql 
-- Q. Differance b/t having clause and where caluse 
-- Q. type of Sql
-- Q. normalization 

# String  
-- char and varchar 


create table ep2(name1 char(4));

insert into ep2 values("   zz  ");

select * from ep2;

select name, length(name) from ep2;


create table ep3(name1 char(4));

insert into ep3 values(" zz  ");

select * from ep3;

select name1, length(name1) from ep3;

-- varchar character

create table ep_var(name1 varchar(3));
insert into  ep_var values("XSD    ");

select name1, length(name1) from  ep_var;

create table ep_var1(name1 varchar(5));
insert into  ep_var1 values("XSD   ");

select name1, length(name1) from  ep_var1;

create table student123(dob date);

insert into student123 values("2024-12-10 ");

select * from student123;

create table student12(dob datetime);

insert into student12 values("2024-12-10 10:33:20");

select * from student12;

-- diff b/t timestamp and datetime 
-- ans -> in timestamp take data is '1970-01-01 to 2038-01-19 03:4:07.49999'
-- in date time 1000-01-01 to 9999-12-31


















