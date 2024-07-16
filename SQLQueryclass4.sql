select *from test
insert into test values
(115,721,15),
(116,824,15)
select *from test
select *from test

order by age desc
select *from test
order by age desc

select * from test 
where id=104

insert into test values
(140,123,124),
(105,234,123)
select * from test

select *from test 
where id=104 or id=105

select * from test 
where id=104 and id=105

select * from test
where id in(101,102,103,104)

--values in between 101 till 201
select * from test
where id between 101 and 201
use hospital
select * from Doctor
select * from  doctor
where dname like '%j'

select * from Doctor
where dname like 'T%'
select * from Doctor
where dname like'%a%'

--joins
select* from test 
--qustionn to is it possible to add a foreign key to the present table
alter table test 
add constraint FK_name
foreign key (name) references patient(did)

select * from test
select * from patient
select * from patient
exec sp_rename 'test.name','ID'
select * from test
