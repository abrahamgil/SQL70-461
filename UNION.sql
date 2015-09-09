SELECT LastName, FirstName
INTO Test2
FROM Person.Person
WHERE LastName LIKE 'Abe%'


SELECT LastName, FirstName FROM Test1
UNION 
SELECT LastName, FIrstName FROM Test2

SELECT LastName, FirstName FROM Test1
UNION ALL
SELECT LastName, FIrstName FROM Test2


SELECT LastName, FirstName FROM Test1
UNION ALL
SELECT LastName, FIrstName FROM Test2
ORDER BY FirstName