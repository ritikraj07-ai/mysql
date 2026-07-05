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