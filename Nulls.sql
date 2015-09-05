SELECT Title, FirstName, LastName
FROM Person.Person;

SELECT Title, FirstName, LastName
FROM Person.Person
WHERE Title IS NOT NULL
ORDER BY LastName, FirstName;