--Database in Use
use [SQL Intro];  -- Using SQL Intro as a database // To avoid the confusion we used [];

--Inspection
exec sp_help;  -- to get a list of columns from a table is to use the "sp_help" stored procedure. "sp_help" returns more than just a list of columns. It returns: the table information, the column information, the identity column, the row GUID column, the primary key, indexes, and constraints. 

exec sp_help People; 
	--last name, first name //Primary Key
exec sp_help [Car Stock];
	--vin // Primary Key

--SELECT
select brand from [Car Stock];

select *from dbo.People;

select *from dbo.[Car Stock];

select color from dbo.[Car Stock];

--DISTINCT
select distinct color from [Car Stock]; --NULL is also coming in distinct colors

--NULL
-- select distinct color from [Car Stock] where color != NULL;   -- Wrong way of checking condition after where clause

select distinct color from [Car Stock] where color is not NULL;  -- is not

select distinct color from [Car Stock] where color is null; -- 

--WHERE
select [first name], [last name] from dbo.People where [favorite color] is null;
select [first name], [last name] from dbo.People where [favorite color] is not null;
select [first name], [last name] from People where [favorite color] = 'royalblue';
select [first name], [last name], [favorite color] from People where [favorite color] = 'royalblue';

select [favorite color] from People where [first name] = 'Tiffany' and [last name] = 'Acosta'; 

--COUNT
select COUNT(*) from People where [favorite color] = 'royalblue';

--JOIN
select color from dbo.[Car Stock];
select [first name], [last name] from People where [favorite color] = 'Coral';
select *from dbo.[Car Stock] where color = 'Coral';
select vin from [Car Stock] where color = 'coral';

--cross join or cartesian product 
select *from People cross join [Car Stock];
select count(*) from People cross join [Car Stock];

--join
select *from People join [Car Stock]
on People.[favorite color] = [Car Stock].color;

select count(*) from People join [Car Stock] on People.[favorite color] = [Car Stock].color;

select People.[first name], People.[last name], [Car Stock].vin
from People join [Car Stock] 
on People.[favorite color] = 'Gold' and [Car Stock].color = 'Gold';