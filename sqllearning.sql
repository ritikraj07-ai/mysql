# CREATING A DATABASE .
create database collage;
#USING A DATABSE TO CREATE TABLE OR OTHERS.
use collage;
#MAKING A TABLE NAME COLLAGE.
CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
# TO CHECK THE TABLE FORMED.
SELECT * FROM student;
# PUTTING THE VALUES INTO THE TABLE.
INSERT INTO student VALUES(1, "RITIK", 18);
INSERT INTO student VALUES(2, "ROHAN", 19);
SELECT * FROM student;
INSERT INTO student VALUES(3, "MOHAN", 18);
SELECT * FROM student;


CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE CHILDEREN (
	id INT PRIMARY KEY,
    name CHAR(50),
    result FLOAT NOT NULL
);

INSERT INTO CHILDEREN VALUES(1, "RITIK", 84.4);
SELECT * FROM CHILDEREN;
USE SCHOOL;
SELECT * FROM CHILDEREN;
CREATE DATABASE IF NOT EXISTS COLLAGE;
DROP DATABASE IF EXISTS COMPANY;
SHOW DATABASES;
USE COLLAGE;
SHOW TABLES;
DROP TABLE STUDENT;
CREATE TABLE STUDENT (
	ROLLNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    RESULT FLOAT
);
SHOW TABLES;
SELECT * FROM STUDENT;
ALTER TABLE STUDENT 
DROP COLUMN RESULT;
INSERT INTO STUDENT
(rollno, name)
values
(1, "ritik raj"),
(2, "rohan");
insert into student values(3, "mohan");
SELECT * FROM STUDENT;
use collage;
use collage;
insert into student 
(rollno, name)
values
(4, "rohit"),
(5, "mohan");
select * from student;
select * from student;
CREATE DATABASE XYZ;
CREATE TABLE DB (
	ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SALARY INT NOT NULL
);
INSERT INTO DB
(ID, NAME, SALARY)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);
select * from DB;

USE collage;
CREATE table customer (
cust_id INT,
FOREIGN KEY(cust_id) references student(rollno)
);
select * from student;
CREATE database temp1;
create table cumst_id (
	id int primary key,
    name varchar(50)
);
insert into cumst_id
(id, name)
values
(101,"mohan"),
(102,"ritik");
drop table cust_info;
create table cust_info (
	cust_no int primary key,
    cust_name varchar(50)
);
insert into cust_info
(cust_no, cust_name)
values
(1, "ritik"),
(2, "rohan"),
(3, "moahn");
create table order_info (
	order_id int primary key,
    cust_no int,
    foreign key (cust_no) references cust_info (cust_no)
); 
select * from order_info;
insert into order_info
(order_id, cust_no)
values
(101, 1),
(102, 2);
select * from order_info;
create table A (
	id int,
    salary int default(25000)
);
insert into A
(id)
values
(1);
select * from A;
drop table A;
CREATE TABLE B (
	age int check (age>= 18)
);
insert into B
(age)
values
(19),
(18);
select * from B;
drop table B;
create database A;
USE A;
create TABLE STS (
	AGE INT PRIMARY KEY,
    NAME VARCHAR(90),
    CONSTRAINT AGE_CHECK CHECK(AGE >=18)
);
INSERT INTO STS VALUES (18, "RITIK");
INSERT INTO STS VALUES (19, "RITIK");
DROP DATABASE A;
USE COLLAGE;
DROP DATABASE COLLAGE;
CREATE DATABASE COLLAGE;
USE COLLAGE;
CREATE TABLE student (
	rollno INT PRIMARY KEY,
	name VARCHAR(50),
    marks INT,
    grade VARCHAR(5),
    city VARCHAR(10)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * 
from student
where city = "delhi";

select * 
from student
where city = "delhi" and marks >= 90;

select *
from student
where grade = "a";

select distinct city from student;
select grade from student;
select * from student 
where city = "mumbai" or grade = "A";
select * from student 
where city in ("delhi","mumbai","gurgaon");
select * 
from student
where city not in ("delhi","mumbai");

select * 
from student
where marks >70
limit 2;
select * from student 
order by city asc;

select * from student
order by marks desc;

select MAX(marks) 
from student;

select AVG(marks) 
from student;

select sum(marks) from student;
select count(marks) from student;

select city , count(name)
from student 
group by city;

select city,name, count(rollno)
from student
group by city,name;

select city ,avg(marks)
from student
group by city
order by avg(marks) desc;

select city,avg(marks)
from student
group by city
order by avg(marks);
-- Create Table
CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(50)
);

-- Insert Values
INSERT INTO payment (customer_id, customer, mode, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

select mode, count(customer)
from payment
group by mode;

select grade ,count(marks)
from student
group by grade;

select city, count(name)
from student
group by city
having MAX(marks >= 90);

select city
from student
where grade = "A"
group by city
having max(marks >= 93)
order by city;

update student
set grade = "O"
where grade = "a";
set sql_safe_updates = 0;

select * from student;

update student
set marks = 82
where rollno = 105;

select * from student;
update student
set grade = "B"
where rollno = 105;

update student
set marks = marks +1;
update student
set marks = 12 
where rollno = 105;
use collage;
delete from student 
where marks <=33;
set sql_delete_updates = 0;
use collage;
select * from student;
create table dept (
	id int primary key,
    name varchar(50)
);
insert into dept
values
(101, "english"),
(102, "IT");
update dept
set id = 111
where id = 101;
create table teacher (
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade 
    on delete cascade
);
insert into teacher
values
(101, "adam",101),
(102, "eve", 102);
Drop table teacher;
select * from teacher;
alter table student
add column age int;
alter table student
add column age int;
alter table student
drop column age;
select * from student;
alter table student
add column age int not null default 19;
alter table student
modify age varchar(2);
alter table student
change age stud_age int;
alter table student
drop column stud_age;
alter table student 
rename su;
alter table su
rename student;
alter table student
change name full_name varchar(50);
select * from student;
alter table student
change full_name name varchar(50);
delete from student 
where marks <80;
alter table student
drop grade;
