SELECT FirstName + ' ' + LastName AS FullName
FROM Person.Person
ORDER BY FullName DESC;

SELECT LastName + ' ' + LastName AS FullName
FROM Person.Person
ORDER BY LastName,FirstName;

SELECT LastName + ', ' + FirstName AS FullName
FROM Person.Person
ORDER BY LastName, FirstName;