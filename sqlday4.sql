--joins 
--import export 
-- select into 
--functions 
create  database company

use company
create table employee
(
empid int ,
empaddress varchar(50),
empage int,
doj date
)

select * from employee

create table HR
(
empid int,
sal int,
desg varchar(50)
)
create table vendor
( venid int,
venaddress varchar(50),
venage int,
vendog date
)
select * from employee
select *from hr
select *from vendor

insert into employee values
(101,'Delhi',33,'2000-10-10'),
(102,'Pune',38,'2005-10-10'),
(103,'MH',39,'2010-10-10'),
(106,'Jk',41,'2020-10-10'),
(108,'up',43,'2008-10-10')

insert into vendor values 
(104,'Delhi',33,'2000-10-10'),
(105,'Pune',38,'2005-10-10'),
(107,'MH',39,'2010-10-10'),
(109,'JK',41,'2020-10-10'),
(101,'Delhi',33,'2005-10-10'),
(102,'pune',38,'2005-10-10')

select * from vendor
insert into hr values 
(101,33000,'IT'),
(102,38000,'FIN'),
(103,68000,'Eng'),
(106,99999,'HR'),
(108,40003,'IT'),
(104,30300,'IT'),
(105,34898,'HR'),
(107,32999,'Fin'),
(109,32893,'FIN')

select * from employee
select * from vendor


select * from employee
select * from HR

select * from employee join Hr 
on employee.empid=Hr.empid
select * from employee inner join Hr 
on employee.empid=Hr.empid
--it gives ouput on the basis of id  where id are maching 


---inner join - inner join produces only the set of records that matches  in both table a and b 
select * from employee,HR  where employee.empid=hr.empid


--how you will find maching records form two table 

--types of joins 
--inner join 
--left join 
--right join 
--outer join
--cross join 
--equi join

--left join  left join produces a compleat set of records from table a with maching records 
--from tale b if there is no match the right side will contains null

select  * from Hr 
select * from 

select  * from hr left join employee 
on hr.empid=employee.empid

----for maching reocrds only 

--we just want to see the non maching records only 
select * from Hr left join employee
on hr.empid=employee.empid
where employee.empid is null

--right join - right outer join producess a complete set of records from table b ,with the matching recors form table a if ther 
--is no maching the left side wil contains null

select * from employee right join Hr
on employee.empid=hr.empid

select *from employee right join hr 
on employee.empid=hr.empid

--full join 
--the full join produces the set all records maching records in table a and table b with maching 
--records from both sides where avilable it there is no match the missing side  will returns the contain 
select * from employee
select * from vendor
select *from employee full join  vendor
on employee.empid=vendor.venid

select * from employee full join vendor 
on employee.empid=vendor.venid
where employee.empid is null or vendor .venid is null


cross join 
select * from employee
select * from employee
select *from employee cross join vendor

--it give the  cortiesion produt of the all the two table 

--merge 
select *from employee
select *from vendor
select *from hr

select * from employee
union 
select *from vendor

select * from employee
union all 
select * from vendor

select * from empid,empaddress,empage,from employee
union 
select venid,venaddress,venage from vendor
union 
select *from  Hr
use company
select * from employee
select * from vendor

select * from employee
union 
select * from vendor
--union give the record of the bothe table but remove the duplicate records 
select * from employee
union all 
select * from vendor

--but union all give all the records without removing the duplicants 
select empid,empaddress,empage from employee
union 
select venid,venaddress,venage from  vendor

select * from employee
select * from vendor
select * from hr

select * from employee left join vendor
on employee.empid=vendor.venid
where vendor.venid is null

delete employee
from employee right join vendor 
on employee.empid=vendor.venid
where vendor.venid is null

delete vendor
from employee right join vendor 
on employee.empid =vendor.venid 
where employee.empid is null

select * from employee
select * from vendor
select * from hr
update employee
set empaddress ='UK'
from employee join vendor
on employee.empid=vendor.venid
where empid=101

select * from employee
select * from hr 
select * from  vendor

update vendor 
set venage=58
from employee join vendor 
on employee.empid =vendor.venid
where venid=102

select * from  employee
select * from vendor
select * from  hr 

update hr
set desg='cs'
from employee inner join hr 
on employee.empid =hr.empid

select * from hr
--merge state  statment in sql 
use master
drop database demo 
go 
create database demo 

create table SourceProducts
(
productID int ,
productName varchar(50),
price int
)

insert into SourceProducts values
(1,'Table',100),
(2,'Desk',80),
(3,'Chair',50),
(4,'computer', 300)

create table TargetProducts
( 
productID int,
productName varchar(50),
price int
)
insert into TargetProducts values
(1,'Table',100),
(2,'Desk',180),
(5,'BEd',50),
(6,'cupbord',300)

select * from Targetproducts
select * from SourceProducts
drop table sourceproducts
drop table Targetproducts
use demo
merge SourceProducts 
using TargetProducts 
on  SourceProducts.productID=TargetProducts.productID

--for insert 
when not matched by target  then 
   insert (productID,productname,price)
   values (TargetProducts.productID,TargetProducts,productname,TargetProducts.price);
















