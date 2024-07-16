--order by 
--group by 





create table employee
(
Empid int,
empaddress varchar(24),
empage int,
dog date
)
insert into employee values
(101,'Delhi',43,'2000-10-10'),
(108,'UP',54,'2000-10-10'),
(104,'MH',23,'2000-10-10'),
(105,'pune',36,'2000-10-10'),
(102,'jk',33,'2000-10-10'),
(106,'pune',33,'2000-10-10')

select * from employee
select * from employee order by empid
select * from employee order by empid desc

--order by keyword are use to the sort the data in asc or des order
--select * from employee
select * from employee order by empaddress
select * from 

create table vendor
(venid int,
venaddress varchar(50),
venage int,
vendoj  date
)
create table HR
(empid int,
sal int,
desg varchar(50),
)

insert into vendor values
(101,'Delhi',33,'2000-10-10'),
(102,'pune',38,'2005-10-10'),
(103,'MH',39,'2020-10-10'),
(106,'jk',43,'2020-10-10')

insert into vendor values

(102,'pune',38,'2005-10-10'),
(103,'MH',39,'2020-10-10'),
(106,'jk',43,'2020-10-10'),
(103,'MH',23,'2020-10-10'),
(104,'GH',32,'2020-10-10')

insert into hr values
(101,25453,'IT'),
(102,43543,'IT'),
(103,23503,'gT'),
(104,45503,'jT'),
(105,33453,'2T'),
(105,5303,'yT'),
(107,34253,'IT')

select * from employee join hr
on employee.empid=hr.empid
order by employee.empid,hr.sal desc




