select*from ##globle
declare @count int
  set @count=0
    while (@count<10)
  begin
     print @cout
       set @count=@count+1

   end
  select * from bankaccount1 
  --print all the records where age >30
  declare @age int 
  set @age =30


  while (@age <=30)
   begin 

      select * from employeeinfo  where age= @age 
	  print age
	  set @age=@age-1

	  if (@age=0)
	    break 
		else
		 print 'age is not 0'
		 end

if (@age =18)
break
 end
 ---case statements

 --programming construct

 select *from hr
 select *from employee1

 select*from company

select empid ,sal,desg,
case type 
when 'cs' then 'give them 2 days off'
when 'hr' then 'novacatin'
when'it' then '5days off'
when 'fin' then 'not eligible'
end as holiday 
from hr

create table hr1
(
  empid int,
  sal int,
  desg varchar (max),
  holiday varchar(max)
  )

  insert into hr1 values
  (101,3923423,'cs','give them two day off'),
  (102,64747,'cs','no vacation'),
(103,3923423,'cs','5days vacation'),
(104,235,'cs','not eligalbe'),
(105,235,'cs','give them tow day off'),
(106,2352,'cs','give them tow day off'),
(107,32323,'cs','give them tow day off')
		
select empid ,sal,desg,
case type 
when 'cs' then 'give them 2 days off'
when 'hr' then 'novacatin'
when'it' then '5days off'
when 'fin' then 'not eligible'
end as holiday 
from hr
select * from hr1
  

  