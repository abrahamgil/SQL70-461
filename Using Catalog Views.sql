--Using a Catalog View to get a list
--of all tables in the database
select * from sys.tables

--Let's get a list of all columns
--in the Person table
select * from sys.all_columns
where object_id=1765581328

--Or we could use a subquery
--
select * from sys.all_columns
where object_id=
	(select object_id from sys.tables 
	 where name='Person')