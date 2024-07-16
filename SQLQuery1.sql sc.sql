--Micrsoft Sql server 
--SSMS itro 
-- database
-- rows 
--columns
-- How to login to sql server
-- how too check the serverice of sql 
-- Insatance in sql  server 
--RDBMS
--DataBase types
   


--DDL
   --create 
   --alter
   --drop


--DML
	--select 
	--insert 
	--update
	--delete


create database test


use test


create table teachers(
id int,
first_name varchar(5),
school_name varchar(50),
hire_date date,
salary numeric
)
drop table student

--change the name of the table techaer to student on database test 

exec sp_rename 'teachers', 'student'
select * from  student 
select * from student 
learn.microsoft.com


--how we can modify the value  or a datatype
alter table student 
alter column salary int

alter table student 
alter column salary char

--change the column  id to emp_id
exec sp_rename 'student.id','emp_id', 'column'

insert into student values
(101,'Alpha','DPS','2022-01-10','A')
select * from student 
--change the datatype for salary column from chanracter to int

alter table student 
alter column salary varchar(50)
--there is no way to change the coulmn datatype if the data is present in the table 

alter table student 
alter column salary int
??????
exec sp_rename 'student.hire_date','Date','coulmn'

--Todays agenda
--constriaints 
--operaters 
--sql server joins

--create database 
--create table
--insert into table


--how to drop 
--to drop a database then always use the master database
--use master 
u







