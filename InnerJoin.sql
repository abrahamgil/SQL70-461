SELECT TOP 1 *
FROM Person.Person;
SELECT TOP 1 *
FROM Person.PersonPhone;

SELECT p.FirstName, p.LastName, ph.PhoneNumber
FROM Person.Person p
INNER JOIN Person.PersonPhone ph ON p.BusinessEntityID=ph.BusinessEntityID;