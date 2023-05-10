use AdventureWorks2019

Select * From Vista_Prueba;

CREATE VIEW Vista_Prueba AS
select Person.Person.FirstName, AddressLine1, Person.PersonPhone.PhoneNumber
FROM person.Person
inner join  Person.Address on
BusinessEntityID = AddressID
inner join Person.PersonPhone on 
Person.Person.BusinessEntityID =Person.PersonPhone.BusinessEntityID;
