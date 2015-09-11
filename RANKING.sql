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

