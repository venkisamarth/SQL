--Microsoft  SQL server
----SSMS 
--database 
--table 
--rows 
--columns
--how to comment in a database
--sessions
--how to login to the sql server
--how to check the services of the sql server 
--instace in sql server 

--RDBMS
-DATA TYPES 
--DDL 
  --CREATE 
  --ALTER 
  --DROP
  --USE

--DML
 --SELECT 
 --INSERT 
 --UPDATE 
 --DELETE


 CREATE DATABASE  TEST 
 create table teachers(
 id int,
 first_name varchar(5),
 school varchar(50),
 hire_date date,
 salary numeric
 )
select * from teachers
--change the table form teachers to student on databse test 
--to change the table name we use the exe sp_rename 
--to change the database we use the alter table modify 
--exe sp_rename 'teachers','students'

select * from student 

--question to modify the value a data types 
alter table student 
alter column frst_name varchar(50)
EXEC sp_rename 'student.frst_name', 'first_name', 'COLUMN';
select * from student

alter table student 
alter column first_name varchar(50)

alter table student 
alter column salary int

--not data it is possibel to change data but with ata it is not possible but we can change 
--length

--change column form id to empid
select * from student 

EXEC sp_rename 'student.id', 'emp_id', 'COLUMN';
insert into student  values 
(101,'Alpha','DSP','2022-12-23',34343)
alter table student 
alter column salary int

alter table student 
alter column salary varchar(50)

--Todays agenda 
--operater
--sql server joins 
--create databse 
--create table 
--insert records into it 
--how to drop the the database

use master
drop database SQLDEMO
create database bank

--create database bank create two tables insert 5 records into 
--use bank
--create table card
--(custid int,
--custname varchar(50),
--cutpin int,
--cutphone int,
--custdop date
--)
--alter table  card 
--add custcard int
--select * from card
--insert into card values
--(101,'venki',112233,8095187449,'1990-12-20',9345)
drop table card
create table card 
(custid int,
custname varchar(50),
custcard int,
custpin int,
custnum int,
custdob date
)
insert into card values
(101,'venki',112233,3435,4040343,'1990-5-12'),
(106,'Alpha',112233,44345,232323,'1990-5-15'),
(null,'beta',333434,34343,545454,'1990-5-15')

select * from card 

--diplicate values(uique) 
--having not null approch(Not null)
--sorted 
--check age>18
--default nationality is India
--check defaul Nationality is India

--sort the calues
use bank
create table BankAccount 
(userID int not null unique,
username varchar(50),
userage int check(userage>=18),
usercountry varchar(50) default  'India' 
)

--sql constrainsts are used  to specify rules for the data in a table 


--Not null -Ensures that a column have a null value
--unique -ensure that all values in a column are diffrence 
--primary key --A combination  of  not null and unique uniqualy identifies  each row in column 
--foreing key-- prevents actions tht would destroy links between tables 
--check -ensure that the values  in a column  satisfies  a specific  condition
--default --sets a default  value for a column  if no value  is specified 
--create index --used to create and retrive data from the database very quickly

select * from BankAccount
insert into BankAccount values
(101,'john',18,'indai'),
(103,'kim',18,'india'),
(104,'kim',19,'china'),
(105,'raj',18,'soutafrica')


insert into BankAccount values
(106,'john',18,'indai'),
(107,'kim',18,'india'),
(108,'kim',19,'china'),
(109,'raj',18,'soutafrica')

use  bank
create table loan
(userID int not null primary key,
loanid int  not null,
Totalloan int ,
)

select *from loan
create table emi
(
userid int not null primary key,
username varchar(50),
useremi int,
foreign key (userid) references loan(userId)
)

select *from emi
create table test 
(id int not null,
name char,
age int 
)
--create table Hospital 
--create table doctor patient reports 
create database Hospital
use Hopital
create table patient
(
did int primary key,
pid int not null,
pname varchar(50),
disease varchar(50),
age int 
)

create table Doctor 
(did int not null,
dname varchar(50),
timing varchar(50),
speciality varchar(50),
foreign key(did) references patient(did)
)

create table Reports
( 
did int not null,
pid int not null,
test varchar(50),
foreign key(did) references patient(did)
)
select *from patient
insert into patient values
(101,121,'Alpha','cold',29),
(102,721,'Alpha','cold',18),
(104,721,'Beta','Fever',19),
(103,827,'Ray','hedace',19),
(105,343,'venki','cold',49
select * from 

insert into doctor values
(101,'ram','10:15','GN'),
(102,'raj','10:16','GUE'),
(103,'Tom','12:30','SN'),
(105,'TIM','1:40','cp')
select * from Reports
insert into Reports  values
(101,121,'BT','+ve'),
(102,142,'ST','+ve'),
(105,124,'MRT','-ve'),
(105,443,'BT','-ve'),
(106,343,'xray','+v')

create table Reports
( 
did int not null,
pid int not null,
test varchar(50),
foreign key(did) references patient(did)
)
insert into reports values
(101,121,'BT'),
(102,142,'ST'),
(105,124,'MRT'),
(105,443,'BT')

select * from Reports
select * from Doctor
select *from patient
use demo
create table test
(name int not null,
sal int not null,
age int,
primary key(name,sal,age)
)
insert into test values
(101,1232,18),
(103,3432,18),
(104,2324,35),
(105,343,16)

select * from test

--where 
--and 
--or 
--like 
--between 
--order by


--order by age 
--order by desc

--where 
exec sp_rename 'test.name','id','column'
select * from test 

select * from test 
where id=102

select * from test 
where id =103

select  * from test 
where id=103 and age=100

select * from test 
where id between 101 and 103



























 



