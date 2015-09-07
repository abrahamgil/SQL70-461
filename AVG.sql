SELECT *
FROM sales.SalesOrderDetail

SELECT AVG(LineTotal) 'LineTotal Avg'
FROM Sales.SalesOrderDetail;

SELECT AVG(LineTotal) 'LineTotal Avg for ID 4'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID=4;