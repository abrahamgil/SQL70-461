SELECT * INTO Test100
FROM HumanResources.Employee;

CREATE SYNONYM MLTable
FOR dbo.Test100

SELECT *
FROM Test100;

SELECT *
FROM MLTable;