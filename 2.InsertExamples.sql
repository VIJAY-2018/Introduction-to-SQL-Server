use [SQL InsertUpdateDelete];
exec sp_help;
exec sp_help people;

--Insert 
insert into people values('Vijay', 'Pokhriyal', 'Navy Blue');
select *from People where [first name] = 'Vijay';

--insert into people values('Vijay', 'Pokhriyal', 'Navy Blue');   //Not possible

insert into people ([last name], [first name], [favorite color])
values ('Dolia', 'Dhruvi', 'Mint');
select *from People where [last name] = 'dolia';

insert into people ([first name], [last name], [favorite color])
values ('Surabhi', 'k', null);
select *from People where [first name] = 'surabhi';

insert into people values('Shailesh', 'Kumar', default);
select *from people where [first name] = 'Shailesh';

--insert into people values('Vivek', null, null);   //not possible

--inserting multiple rows at a time
insert into People values
('Vijay', 'Kumar', 'Black'),
('Anand', 'Kumar', 'Blue'),
('Bharti', 'Kumar', 'Red'),
('Bhavana', 'Kumar', 'Yellow'),
('Usha', 'Kumar', 'Green');

select *from People where [last name] = 'Kumar';

--insert all Kumar's into another new table using SELECT INTO

select *into [Kumar Brothers] from People where [last name] = 'kumar';
select *from [Kumar Brothers];
exec sp_help [kumar brothers];

--insert from select 

insert into [Kumar Brothers] ([first name], [last name], [favorite color])
select [first name], [last name], [favorite color] from people where [last name] = 'dolia';

select *from [Kumar Brothers];
