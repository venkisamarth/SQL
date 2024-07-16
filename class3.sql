drop table bankaccount
use Bank
create table BankAccount
(
UserID int not null unique,
Username varchar(50) not null,
Userage int check (Userage>=18),
Usercountry varchar(50) default 'India'
)
select * from bankaccount

insert into bankaccount (userid,username,userage,usercountry) values
(108,'Kim',18,'India')

select * from bankaccount)
use bank

Create table EMI
(
UserID int not null unique,
Username varchar(50) not null ,
Userage int check(Userage>=18),
Usercountry varchar(50) default 'Indian'
)
select *from emi
--create a primary key create a clustered index
--wew can only create on pk in table
drop table emi
use bank
Create table EMI
(
UserID int not null primary key,
Username varchar(50) not null ,
UserEMI int
)
insert into emi values
(104,'kim',1800),
(102,'Tim',1008),
(103,'John',9918),
(101,'Snow',6617)
select *from emi 

create table  loan
(
UserID int not null primary key,
Loanid int not null,
Totalloan int
)
insert into loan values
(104,100400,1800),
(102,100200,1008),
(103,100300,9918),
(101,100100,6617)
select *from loan
select *from emi
--how to create a relation ship between 2 table

create table  loan
(
UserID int not null primary key,
Loanid int not null,
Totalloan int
)
Create table EMI
(
UserID int not null primary key,
Username varchar(50) not null ,
UserEMI int
foreign key (userid) references loan (userId)
)
--create database Hospital
create database Hospital
use hospital
create table patient
(
did int primary key not null,
pid int not null,
pname varchar(50),
disease varchar(50), 
age int
)

create table Doctor
(
did int not null ,
dname varchar(50),
timing varchar(50),
speciality varchar(50),
foreign key (did) references patient(did)
)

create table Report 
(
did int not null,
pid int not null,
test varchar(50),
result varchar(50),
foreign key(did) references patient(did)
)
insert into patient values
(101,121,'Alpha','Cold',29),
(102,771,'Alpha','fever',19),
(104,621,'ray','headce',59),
(103,824,'Gama','ace',39),
(105,921,'Tim','Clod',49)

insert into Doctor values
(101,'Ram','10:10','GM'),
(102,'Raj','10:15','SN'),
(104,'Roy','11:30','GM'),
(103,'Tom','12:30','SN'),
(105,'Tim','14:50','op')

select *from patient
select * from Doctor

insert into Report values
(101,121,'BT','+ve'),
(102,721,'CT','-ve'),
(104,621,'MRI','+ve'),
(103,824,'BT','+ve'),
(105,921,'xray','+ve')
delete from doctor
delete from report 
delete from patient

create table test 
(
Name int not null,
sal int not null ,
age varchar(50),
primary  key (name,sal,age)
)

insert into test values
(101,121,15),
(101,721,16),
(104,121,17),
(104,824,18),
(105,824,19)
select * from test

