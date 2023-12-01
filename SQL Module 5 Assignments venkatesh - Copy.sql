--Problem Statement:

/*You have successfully cleared your fourth semester. In the fifth semester you will
work with GROUP BY, having BY clauses and SET operators.*/

create table orders
(
	order_id int,
	order_date date,
	amount int,
	customer_id int
);

insert into orders values
(101,'2020-02-15',999,1),
(107,'2020-03-20',799,2),
(108,'2020-05-08',599,3),
(110,'2021-04-11',650,6)

select * from orders

--1. Arrange the ‘Orders’ dataset in decreasing order of amount
select amount from orders 
order by amount desc

    /* 2. Create a table with the name ‘Employee_details1’ consisting of these
     columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with
    the name ‘Employee_details2’ consisting of the same columns as the first
    table */

create table Employee_details1(
	Emp_id int,
	Emp_name varchar(20),
	Emp_salary int,
)
insert into Employee_details1 values
(1001,'Guru',25000),
(1003,'Hanuman',40000),
(1011,'venki',35000),
(1045,'sanju',20000)

select * from Employee_details1

create table Employee_details2(
	Emp_id int,
	Emp_name varchar(20),
	Emp_salary int,
)

insert into Employee_details2 values
(1013,'puni',30000),
(1046,'sanjay',22000),
(1001,'Guru',25000),
(1003,'Hanuman',40000)


select * from Employee_details1
select *from Employee_details2

--3. Apply the UNION operator on these two tables

select * from Employee_details1
UNION
select *from Employee_details2

--4. Apply the INTERSECT operator on these two tables

select * from Employee_details1
INTERSECT
select *from Employee_details2

--5. Apply the EXCEPT operator on these two tables

select * from Employee_details1
EXCEPT
select *from Employee_details2
