--Using INFORMATION_SCHEMA VIEWS

--Let's get a list of all tables in the database
select * from INFORMATION_SCHEMA.TABLES

--Add order by to make it easier to read
select * from INFORMATION_SCHEMA.TABLES
order by TABLE_SCHEMA, TABLE_NAME


--Let's get a list of all columns in 
--the Purchasing.Vendor table
select * from [INFORMATION_SCHEMA].[COLUMNS]
where TABLE_NAME='Vendor'

