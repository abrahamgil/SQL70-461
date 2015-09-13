SELECT TOP 1 *
FROM Person.Person;
SELECT TOP 1 *
FROM Person.PersonPhone;

SELECT Person.Person.FirstName, Person.Person.LastName, Person.PersonPhone.PhoneNumber
FROM Person.Person
INNER JOIN Person.PersonPhone ON Person.Person.BusinessEntityID=Person.PersonPhone.BusinessEntityID;