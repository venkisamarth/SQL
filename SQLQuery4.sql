
--joins
--Import 
--select into
--Temporary table
--Function

--joins
--merge tables

--Is there a limit to join the table
-- no there is no limit to the join the table
select * from test 
select * from test
create database Demo

create database Company
use company 
create table Employee
(
Empid int,
empaddress varchar(50),
empage int,
doj date
)
create table HR
( 
Empid int, 
sal int,
desg varchar(50)
)
create table vendor 
(
venid int,
venaddress varchar(50),
venage int,
vendoj date,
)
select *from employee
select * from vendor
select* from Hr

insert into  employee values
(101,'Delhi',33,'2000-10-10'),
(102,'pune',38,'2000-10-10'),
(103,'MH',39,'2000-10-10'),
(106,'jk',41,'2000-10-10'),
(108,'up',43,'2000-10-10'),
(104,'Delhi',33,'2000-10-10'),
(105,'pune',38,'2000-10-10'),
(107,'MH',39,'2000-10-10')




insert into HR values
(101,33000,'IT'),
(102,38000,'FIN'),
(103,68000,'ENG'),
(106,90000,'HR'),
(108,40003,'IT'),
(104,30300,'IT'),
(105,30080,'HR'),
(107,30090,'IT'),
(109,40010,'IT')
insert into Hr values
(123,23424,'IT')
select * from hr
select *from employee
select * from vendor
drop table hr
drop table employee
drop table vendor

select * from employee
select *from vendor
select *from Hr

insert into  vendor values
(104,'Delhi',33,'2000-10-10'),
(105,'pune',38,'2000-10-10'),
(107,'MH',39,'2000-10-10'),
(109,'jk',41,'2000-10-10'),
(101,'Delhi',33,'2000-10-10'),
(102,'Pune',38,'2000-10-10')

select * from employee

drop table employee
select * from vendor
select * from hr


create table Employee
(
Empid int,
empaddress varchar(50),
empage int,
doj date
)
insert into  employee values
(101,'Delhi',33,'2000-10-10'),
(102,'pune',38,'2000-10-10'),
(103,'MH',39,'2000-10-10'),
(106,'jk',41,'2000-10-10'),
(108,'up',43,'2000-10-10')

select * from employee 
select * from vendor
select * from hr

create table Employee
(
Empid int,
empaddress varchar(50),
empage int,
doj date
)
insert into  employee values
(101,'Delhi',33,'2000-10-10'),
(102,'pune',38,'2000-10-10'),
(103,'MH',39,'2000-10-10'),
(106,'jk',41,'2000-10-10'),
(108,'up',43,'2000-10-10')
select * from employee 
select * from vendor
select * from hr
 
select *from employee cross join vendor
on employee.empid=vendor.venid

 
select * from employee inner join hr
on employee.empid =hr.empid
select * from employee
select * from hr

select * from vendor
select * from hr

select * from employee
select * from  vendor
select * from employee full join vendor
on employee.empid = vendor.venid
select * from Employee
select * from employee order by empid

select * from employee order by empaddress
select * from employee  order by empid asc 
select  * from employee order by empid desc
select * from vendor 
select * from hr

 select * from employee join hr
 on employee.empid=hr.empid
 order by employee.empid desc

 select * from employee
 select * from hr

 --group by
 select  desg,sum(sal) from hr
 group by desg
 select * from hr
 select  sum(sal) from hr
  select sum(sal),desg from hr
  group by desg

  select * from employee

  select count (empid),empaddress
  from employee
  group by empaddress

  select count(empid) as [count of empid],empaddress
  from employee 
  group by empaddress

  select 
  count(empid)
  sum(sal+empid),hr.desg from hr
  group by hr.desg
select 
count(bonus),
sum(bonus+sal),desg from hr
group by desg
select (bonus+sal),desg from hr
where deg='it'
group by desg
 
 select * from employee
 select * from vendor
 select * from hr

 create table employee1
 (
 id int,
 name varchar(24),
 gender varchar(24),
 salary int,
 department varchar(25)
 )
 insert into employee1 values
 (1,'Devid','Male',5000,'Sales'),
 (2,'jim','Male',2444,'hr'),
 (3,'Kate','Female',234342,'Markating'),
 (4,'Devid','Male',5000,'Sales'),
 (5,'jim','Male',2444,'hr'),
 (6,'Kate','Female',234342,'Markating')
 select * from employee1
 select sum(salary) as Salary_sum,department
 select sum(salary) as salary_sum,gender
 from employee1
 group by gender

 select 
 sum(salary) as salary_sum_,department
 from employee1
 group by rollup (department)
 select * from employee1

 select coalesce ( department,'All deparment sum') 
 AS deparment,
 sum(salary) as salary_sum
 from employee1 
 group by rollup(department)

 coalesce ( department,'all departments') as department,
 coalesce(gender,'all gender') as gender ,
 sum(salary) as salary_sum
 select 
 sum(salary) as salary_sum,department,gender
 from employee1
 group by rollup (department,gender)
 select coalesce ( department,'All deparment sum') 
 AS deparment,
 sum(salary) as salary_sum
 from employee1 
 group by rollup(department)
 select 
 coalesce (department,'all departments') as department,
 coalesce (gender,'all genders' ) as gender,
 sum(salary) as salary_sum
  from employee1
  group by rollup (department,gender)
select *from employee1\

select
coalesce(department,'all department')as department,
coalesce(gender,'all gender') as gender,
sum(salary) as salary_sum
from employee1
group by cube ( department,gender)

select * from employee1 

select 
coalesce( department,'all department') as department,
coalesce( gender,'all genders')as gender,
sum( salary) as salary_sum
from employee1
group by rollup (department,gender)

select * from employee1
insert into employee1 values
(3,'vik','male',23234,'hr'),
(55,'shane','male',234235,'sales'),
(4,'jane','female',69999,'IT'),
(9,'Mac','male',42355,'markating')

select * from employee1

--view in sql server
--how to create a view
--how to alter /modify a view 
-- how to read from the view 
--how to drop a view
select *from employee1
select id,name,gender,department ,* from employee1

 
select * from filterdata

delete from employee1 where id=16

select * from employee1
delete from employee1 where id=55

select * from filterdata
--how to modify the view 
alter view  filterdata
as
select id,name,gender,department from employee1
select * from filterdata
select * from filterdata

--hoh to drop a view
drop view filterdata
select  * from filterdata

select * from filterdata
select * from employee1
---Stored procedure 
-- how to create a procedure
create procedure emp
as 
 select * from employee1
union all 
select * from employee1
union  all
select * from employee1
create procedure  filters
as 
select 
coalesce(department,'all depertment') as deartment,
coalesce(gender,'all  gender') as gender,
sum(salary) as salary_sum
from employee1
group by rollup (department,gender)


 exec emp
 exec filters
 alter procedure filters @dept varchar(50)
 as 
 select 
 coalesce(department,'all department') as department,
 coalesce(gender,'all gender') as gender,
 sum(salary) as salary_sum
 from employee1
 group by rollup (department,gender)
 having department=@dept

 exec filters @dept='it'
 exec filters @dept='hr'

 drop filters @dept varchar(24)
drop procedure filters

select * from filters
select * from employee1
--how to create triggar
create trigger Freechanges
on employee1
for insert ,update,delete
as 
print'you are not allowed to update my table,changee notallowed month end'
rollback;
insert into employee1 values
(17,'david','male',5000,'sales')
delete from employee1
--triggar 
select * from employee1


select * from employee1
create trigger alters
on employee1
for
Insert , update,delete
as 
print'you are not allowed to table tqable ,changees are freezed at motnth end '
rollback;

create trigger alters
on employee1
for 
Insert 
as
print'change are monitored'

create trigger alterss
on employee1
for 
Insert 
as
print'changes are moniterised'
insert into employee1 values
(17,'devid','male',5000,'sales')
select * from employee1

select * from employee1

--commite means save
--rollback mean revrt/unsave



















































