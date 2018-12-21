use AdventureWorks2012
go
select DATEDIFF(dd,'2018-12-06','2020-12-06')
select DATEDIFF(mm,'2018-12-06','2020-12-06')
select DATEDIFF(yyyy,'2018-12-06','2020-12-06')
select * from Person.Person
select * from Person.Person where BusinessEntityID <9
select * from HumanResources.Employee where JobTitle like '[C-F]%'
select * from HumanResources.Employee where JobTitle like 'A%'
select * from HumanResources.Employee order by JobTitle
select * from HumanResources.Employee  JobTitle like '[A-S]%'






