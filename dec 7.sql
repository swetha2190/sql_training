
------- friday--------

select * from HumanResources.EmployeeDepartmentHistory d 
 join HumanResources.Employee e
on d.BusinessEntityID= e.BusinessEntityID 
 join HumanResources.Department p on p.DepartmentID=d.DepartmentID

 ------ employeeid
 ---employee name
 ---department name
 ---date of joining
 ----employee address

 
Select e.BusinessEntityID as Emp_ID,p.FirstName as Emp_Name,d.Name as Dept_Name,
 e.HireDate as Joining_Date,City as Emp_Address from HumanResources.Employee e
 join Person.Person p on e.BusinessEntityID=p.BusinessEntityID
 join HumanResources.EmployeeDepartmentHistory dh  on dh.BusinessEntityID=e.BusinessEntityID
 join HumanResources.Department d on d.DepartmentID=dh.DepartmentID
 join Person.BusinessEntityAddress be on e.BusinessEntityID=be.BusinessEntityID 
 join Person.Address a on be.AddressID=a.AddressID

