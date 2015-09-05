CREATE TABLE AbrahamPK2
(PersonID int,
LastName varchar(50),
FirstName varchar(25)
CONSTRAINT PK_Person PRIMARY KEY (PersonID, LastName));