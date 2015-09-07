SELECT *
FROM sales.SalesOrderDetail

SELECT COUNT(LineTotal)
FROM Sales.SalesOrderDetail;

SELECT COUNT(LineTotal) 'Count of Items', AVG(LineTotal) 'LineTotal Average', SUM(LineTotal) 'SUM of LineTotal'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID=3;