--Problem Statement:

/*You have successfully cleared your third semester. In the fourth semester you will
work with inbuilt functions and user-defined functions.*/

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



--1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

select min(amount) from orders

select max(amount) from orders

select avg(amount) from orders

--2. Create a user-defined function which will multiply the given number with 10

create function [sales Order]
(@quantity int, @price  int)
returns int 
as
begin
	return (@quantity * @price)
end

select dbo.[sales Order](100,10)


--3. Use the case statement to check if 100 is less than 200, greater than 200 
	--or equal to 200 and print the corresponding value.

select 
	case
		when 100 < 200 then 'less than 200'
		when 100 > 200 then 'greater than 200'
		when 100 = 200 then 'equal to 200'
	end as Result;

--4. Using a case statement, find the status of the amount. Set the status of the
	--amount as high amount, low amount or medium amount based upon the condition.

select * from orders

select  order_id, order_date, amount,
	case amount
		when 999 then 'amount as high amount'
		when 100  then 'amount as low amount'
		when 650 then 'amount as medium amount'
	end as amount
from orders

