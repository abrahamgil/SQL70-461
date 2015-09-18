SELECT TOP 10 * FROM Person.Address

UPDATE Person.Address
SET ModifiedDate='20080515'

UPDATE Person.Address
SET AddressLine1 ='1227 Shoe St.'
WHERE AddressLine1 = '1226 Shoe St.'

UPDATE Sales.SalesPerson
SET Bonus=6000, CommissionPct=.10, SalesQuota=NULL
WHERE TerritoryID=1;

SELECT * FROM Sales.SalesPerson