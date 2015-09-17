SELECT * FROM Production.UnitMeasure

INSERT INTO Production.UnitMeasure
(UnitMeasureCode,Name,ModifiedDate)
VALUES
('FT', 'Feet', '20080414')

INSERT INTO dbo.EmployeeSales
SELECT 'SELECT', sp.BusinessEntityID, c.LastName, sp.SalesYTD
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS c
ON sp.BusinessEntityID = c.BusinessEntityID
WHERE sp.BusinessEntityID LIKE '2%'
ORDER BY sp.BusinessEntityID, c.LastName;