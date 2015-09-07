SELECT DISTINCT SpecialOfferID
FROM Sales.SalesOrderDetail
ORDER BY SpecialOfferID

SELECT SUM(LineTotal) AS 'LineTotal SUM'
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal) AS 'LineTotal SUM'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 4;