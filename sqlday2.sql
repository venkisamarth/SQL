--Micrssoft Sql server 
--ssms introduction 
--Databse
--Table 
--Rows 
-- column 
-- how to comment  in a database
-- Sessions
-- Ho to check th server of the sql sever 
-- instace in sql server 
--RDBMS

--Todays agend 
-- creating ,using ,Droping  a database  in sql 
-- data type in sql 
-- constrients in sql 
--create  table 
--selct table 
--select distict
--where 
--AND or NOT operator 
--like & between ooperater
--datatype types

---numarics 
--datetime 
--character
--strings 

--Numeric  Data types
--int 
--smallint
--tinyint
--float

--float datatype
Declare @number float
set @number =124343
print @number

declare @num int 
set @num =10 
print @num 

declare @narmath int 
set @narmath =10 
print @narmath

declare @a int 
set @a =3232
print @a

declare @b tinyint
set @b = 22
print @b 

--character data type 
declare @char char
set @char ='A'
print @char

declare @char varchar(5)
set @char='venki'
print @char

declare @ven varchar(max)
set @ven ='venki'
print @ven

declare @char varchar(max)
set @char ='hello'
print @char


--date time
--time



declare @time time
set @time='21:23:2'
print @time

--date 
declare @date date
set @date ='2022-10-16'
print @date

--datetime 
declare  @datetime datetime
set @datetime='2020-12-2 23:23:32'
print @datetime
 

select CURRENT_TIMESTAMP

 ---xml 
 --blob  21 cr character lenght
 --char 
 --string 
 -- flaot 
 -- datetime
 --how to create database and use it 
 -- name of the database  and the  (location and the path)
 --create database database name 
 create database SQLDEMO
 --create database Demo

 --there is no way to create databse with same name
 ---DDL
 --data defiantion language 
 --create 
 --alter 
 --drop 
 --collation 
--create -(database table sql/procedure views logins)
--modify- (update (database table sqlprocedure ,views logins-)
--drop - drop is used to drop the the table u created and the this is the normal 
--use -change to database content to the specific database 
--Turuncate -used to remove all the rows from  a tabulerspecified pertitioin of a table 
--without logging the indivdual row  deletions

create database HDFC
--hwo to rename the database  HDFC modify  name=HDFC-BANK
--drop database HDFC
drop database HDFC
create database Hospal
alter database Hospal modify name=[Hopital]
--create table employee
--requarement is to oin which database is requared  
use demo
create table employee
(empname varchar(20),
empid int ,
empdob date,
empsal float
)

or 

--create table employee(empname varchar(20),empid int,empdob date,empsal float)
--create table address(addressid,empid,address,commpany)
--on which database we need to create this table 

create table address
(addressID varchar(10),
empid int,
[Address] varchar(10),
company varchar(10)
)
select * from address
select * from  employee

--can we add a column in any existring  table -
-- add column in employee named as address varchar(5)

alter table employee
add email varchar 
select *from employee

--modify a column email varchr (50)
alter table employee
alter column email varchar (50)

--modify a column and change the database type lenght 

alter table employee
alter column email varchar(50)
--drop column in employee  table name as dob 
 alter table employee
 drop column empdob

 drop table  employee

 declare @num varchar
 set @num='abc'
 print @num

 alter table address
 drop column 

 select * from address

--data manipulation  language (DML)
--all the below mentioned  operations we can perform on data level 
--select 
--insert 
--update
--delete
--merge
--bulk insert 

--give me how many records we can see on a address table which is present on a demo  base
--use Demo
select * from address
select addressID ,address from  address

--insert 5 record into my table  my table  address on database Demo 
 
 insert  into  address (addressID,Address,company)
 values
 ('Delhi','cp','IBM')
 select * from address

 insert into address(addressID,address,company)
 values
 ('pune','bL','BMW')
 select *from address

 insert into address values
 ('jerry','jy','BMW'),
 ('kashi','kh','govt')
select *from address
--how to read the data form table 
select addressID,address,company from address


select *from address

--*represents all the records in the table 
--update and delete 
update  address
set addressid='khashmir'
where address ='kh'

select *from address


update address 
set company ='IBM'
where  addressid='jerry'

select * from address

delete from address
where address ='jy'

delete from address 
where company='IBM' AND address='B1'


















 --







