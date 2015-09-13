


--Let's take a look at an OUTER JOIN
--This will return ALL records from the left table
--It will return NULL for columns in the right table
--that do not match with the left table
SELECT
c.CustomerID, 
c.CustomerID AS Expr1, 
soh.OrderDate
FROM 
Sales.Customer c
LEFT OUTER JOIN
Sales.SalesOrderHeader soh
ON c.CustomerID = soh.CustomerID


--If we switch the positions of the table names in the query
--we can change LEFT OUTER JOIN to RIGHT OUTER JOIN and get
--the same results
SELECT
c.CustomerID, 
c.CustomerID AS Expr1, 
soh.OrderDate
FROM 
Sales.SalesOrderHeader soh
RIGHT OUTER JOIN
Sales.Customer c
ON c.CustomerID = soh.CustomerID