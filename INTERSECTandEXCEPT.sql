SELECT BusinessEntityID FROM Person.Person
EXCEPT
SELECT BusinessEntityID FROM HumanResources.Employee
ORDER BY BusinessEntityID