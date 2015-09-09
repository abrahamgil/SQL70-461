SELECT *
FROM Sales.SalesTerritory

SELECT Name, CountryRegionCode, [Group], SalesYTD
FROM Sales.SalesTerritory

SELECT Name, CountryRegionCode, [Group], SalesYTD
INTO SalesTestTable
FROM Sales.SalesTerritory