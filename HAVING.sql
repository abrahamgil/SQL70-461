SELECT CountryRegionCode, SUM(SalesYTD) AS 'Totals'
FROM Sales.SalesTerritory
WHERE SalesYTD>4000000
GROUP BY CountryRegionCode
HAVING SUM(SalesYTD) > 6000000;