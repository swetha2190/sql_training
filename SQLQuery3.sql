-----

-----------subqueries

select BusinessEntityID from Person.BusinessEntityAddress
where AddressID in 
(select AddressID 
from Person.Address 
where City='Bothell') 

select BusinessEntityID,JobTitle from HumanResources.Employee 
where exists
(select * from HumanResources.EmployeeDepartmentHistory
where BusinessEntityID = HumanResources.Employee.BusinessEntityID
and DepartmentID = 4)
