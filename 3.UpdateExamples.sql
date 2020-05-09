--Update demo

select *from people2;

update people2 set [favorite color] = 'green';

select *from people2;

select *from people3 where [favorite color] = 'green';
/*
Derek	Duke	Green
Harpo	Marx	green
Tyrone	Odom	Green
Tameka	Short	Green
Roger	Stevens	green
clarabell	the clown	green
Cassie	Walsh	Green
*/
-- total 7 rows

update people3 set [favorite color] = 'SmokeGrey' where [favorite color] = 'green';
select *from people3 where [favorite color] = 'smokegrey';  -- Now 7 rows

--updating a single entity
update people3 set [favorite color] = 'green' where [first name] = 'Derek' and [last name] = 'duke';

select *from people3 where [favorite color] = 'smokegrey';  -- Now 6 rows
select *from people3 where [favorite color] = 'green';

--update based select 
update people2 set [favorite color] = 
( 
	  select [favorite color] from People where 
	  dbo.people2.[first name] = dbo.People.[first name] and
	  dbo.people2.[last name] = dbo.People.[last name] 
);

select *from people2;