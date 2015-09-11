SELECT BusinessEntityID, Rate
FROM HumanResources.EmployeePayHistory;

SELECT BusinessEntityID, Rate
FROM HumanResources.EmployeePayHistory
ORDER BY Rate DESC;

SELECT BusinessEntityID, Rate, RANK() OVER(ORDER BY Rate DESC) as RankByRate
FROM HumanResources.EmployeePayHistory;

SELECT BusinessEntityID, Rate, RANK() OVER(ORDER BY Rate DESC) as RankByRate
FROM HumanResources.EmployeePayHistory
ORDER BY BusinessEntityID;

SELECT i.ProductID, p.Name, i.LocationID, i.Quantity, 
	RANK() OVER (PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
	ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 and 4
ORDER BY i.LocationID;

SELECT TOP(10) BusinessEntityID, Rate, 
        DENSE_RANK() OVER (ORDER BY Rate DESC) AS RankByRate
FROM HumanResources.EmployeePayHistory;

--NTILE
--NTILE(4) divides the 316 rows returned into four groups of 79 rows each 
--indicating which quartile the Rate falls into...
--By using NTILE(2), we can see if the Rate is in the top or bottom half 
--of the results
  SELECT BusinessEntityID, Rate, 
         NTILE(4) OVER (ORDER BY Rate DESC) AS Quartile
  FROM HumanResources.EmployeePayHistory;


--Row Number returns row numbers as part of the result set
SELECT ROW_NUMBER() OVER(ORDER BY SalesYTD DESC) AS Row, 
    FirstName, LastName, ROUND(SalesYTD,2,1) AS "Sales YTD" 
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0;


--Let's put them all together
--Change SalesYTD in each of the Ranking Types to LastName to see how
--it affects the result set
--NOTE! Change one at a time, and change it back to SalesYTD
--before changing another
SELECT ROW_NUMBER() OVER(ORDER BY SalesYTD DESC) AS Row, 
	NTILE(4) OVER (ORDER BY SalesYTD DESC) AS Quartile,
	 RANK() OVER (ORDER BY SalesYTD DESC ) AS 'Rank',
	DENSE_RANK() OVER (ORDER BY SalesYTD DESC) AS DenseRank,
    FirstName, LastName, ROUND(SalesYTD,2,1) AS "Sales YTD" 
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0;
