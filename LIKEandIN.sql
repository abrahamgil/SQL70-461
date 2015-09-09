SELECT FirstName, LastName
FROM Person.Person
WHERE LastName = 'Walters'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'W%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'W_x%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[adr]%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[a-f]%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName IN ('Russell', 'Ryan', 'Diaz');