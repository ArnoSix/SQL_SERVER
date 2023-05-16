use AdventureWorks2019

Select * From v_aggperson;

CREATE VIEW v_aggperson AS
select Person.Person.FirstName, AddressLine1, Person.PersonPhone.PhoneNumber
FROM person.Person
inner join  Person.Address on
BusinessEntityID = AddressID
inner join Person.PersonPhone on 
Person.Person.BusinessEntityID =Person.PersonPhone.BusinessEntityID;