SELECT *
FROM Sales.SalesTerritory;

SELECT CountryRegionCode, SalesYTD
FROM Sales.SalesTerritory;

SELECT CountryRegionCode, SalesYTD
FROM Sales.SalesTerritory
WHERE SalesYTD>4000000;

SELECT CountryRegionCode, SUM(SalesYTD)
FROM Sales.SalesTerritory
WHERE SalesYTD>4000000
GROUP BY CountryRegionCode;