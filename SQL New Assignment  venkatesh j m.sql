/*Problem Statement:

You have successfully cleared your fifth semester. In the final semester you will
work with views, transactions and exception handling.*/

create table transactions(
	cust_id int,
	cust_firstname varchar(50),
	cust_lastname varchar(50),
	cust_address varchar(50)
)

insert into transactions values
(101,'John','wick','San Jose'),
(102,'Kriss','Jordan','india'),
(103,'Johnny','walker','San Jose'),
(104,'Jack','sparrow','Swiss')

select * from transactions
--1. Create a view named ‘customer_san_jose’ which comprises of only those customers who are from San Jose

create view customer_san_jose
as
select cust_id, cust_firstname, cust_lastname, cust_address from transactions
where cust_address = 'San jose'

select * from customer_san_jose

--2. Inside a transaction, update the first name of the customer to Francis where the last name is Jordan:
	--a. Rollback the transaction
	--b. Set the first name of customer to Alex, where the last name is Jordan

select * from transactions

BEGIN TRANSACTION;

-- Update first name to Francis where last name is Jordan
UPDATE transactions
SET cust_firstname = 'Francis'
WHERE cust_lastname = 'Jordan';

-- Rollback the transaction
ROLLBACK;

-- Update first name to Alex where last name is Jordan
BEGIN TRANSACTION;

UPDATE transactions
SET cust_firstname = 'Alex'
WHERE cust_lastname = 'Jordan';
COMMIT;

select * from transactions

--3. Inside a TRY... CATCH block, divide 100 with 0, print the default error message.

BEGIN TRY
    DECLARE @result FLOAT;
    SET @result = 100 / 0;
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH;

--4. Create a transaction to insert a new record to Orders table and save it.

BEGIN transaction

insert into orders (order_id , order_date , amount , customer_id ) values
(101,'2020-02-15',999,1),
(107,'2020-03-20',799,2),
(108,'2020-05-08',599,3),
(110,'2021-04-11',650,6)

Commit;

select * from orders
