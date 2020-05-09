use [SQL InsertUpdateDelete];

exec sp_help ;

select *from people4;

select *from people5;

select count(*) from people5;

delete from people5 where [first name] = 'Sara' and [last name] = 'Abbott';

select *from people5;

