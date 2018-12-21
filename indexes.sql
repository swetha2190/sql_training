-------------indexes,batch,stored procedures,

----indexes are used to speed up d search

---how to create unique cluster and unique non cluster

-----activity:: what is pad index?? ans:: 
-----what is fill factor?? ans:: max rows it can fit.
-----what is online
--------------------------------------creating clustered index-------------
-----CREATE CLUSTERED INDEX IX_EmployeeID 
--ON Employee (EmployeeID)
--WITH FILLFACTOR = 10
------------------------------creating non clustered index--------------------
--CREATE NONCLUSTERED INDEX DX_Employee_ManagerID ON Employee (ManagerID

--emp id name designation mnager id insert records create clustered and non clustered

------creating table in MyDB
create table Employee
(
employee_id int unique not null,
employee_name varchar(20),
designation varchar(20) ,
manager_id int 
)

insert into Employee values (1,'emp1','testing',11),(2,'emp2','db',12),(3,'emp3','techsupport',13),
(4,'emp4','trainee',14),(5,'emp5','traineesoftware',15),(6,'emp6','associate',16),
(7,'emp7','ceo',17),(8,'emp8','vc',18),(9,'emp9','c',19),(10,'emp10','devlepor',20),(11,'emp11','javadev',21),
(12,'emp12','dotnetdev',22)

create clustered index ix_Employee
on Employee(employee_id)
with fillfactor=10

create nonclustered index dx_manager_id
on employee(manager_id)

CREATE NONCLUSTERED INDEX FX_Managerid
ON Employee(manager_id)
WHERE manager_id= 11

ALTER INDEX IX_Employee
ON Employee DISABLE 

ALTER INDEX IX_Employee
ON Employee REBUILD

EXEC sp_rename 
'Employee.ix_employee', 'ix_employeeID','index'

DROP INDEX IX_EmployeeID
ON Employee

SET SHOWPLAN_ALL on

set SHOWPLAN_XML on

people working as team lead

CREATE VIEW vw_Employee
AS
SELECT employee_id,employee_name,manager_id
FROM Employee where designation='ceo'
	
select * from vw_Employee

CREATE VIEW HumanResources.vwEmployeeDepData 
AS
SELECT e.BusinessEntityID, MaritalStatus, DepartmentID
FROM HumanResources.Employee e JOIN 	HumanResources.EmployeeDepartmentHistory d
ON e.BusinessEntityID = d.BusinessEntityID

ALTER VIEW HumanResources.vwEmployeeDepData 
AS
SELECT e.BusinessEntityID, LoginID, MaritalStatus, DepartmentID
FROM HumanResources.Employee e JOIN HumanResources.EmployeeDepartmentHistory d
ON e.BusinessEntityID = d.BusinessEntityID

sp_rename 'HumanResources.vwEmployeeDepData', 'vEmployeeDepData'


DROP VIEW HumanResources.vwEmployeeDepData

-----------create view try to update both the tables at a time it should show error

select * from depositor

select * from borrower

create view swethadb
as
select d.customername,d.accountnumber,b.loannumber from depositor d
join borrower b on d.customername= b.customername

select * from swethadb

update swethadb
set b.loannumber=1222
from borrower b, depositor d 
where b.customername= d.customername
and b.loannumber=1222


CREATE VIEW EmployeeManagerDetails
 AS
 SELECT e1.BusinessEntityID, c1.FirstName, c1.LastName, e1.jobTitle, 
 c2.FirstName AS 'Manager First Name', c2.LastName AS 'Manager Last Name'
 FROM HumanResources.Employee e1 INNER JOIN Person.person c1
 ON e1.BusinessEntityID = c1.BusinessEntityID INNER JOIN HumanResources.Employee AS e2
 ON e1.BusinessEntityID = e2.BusinessEntityID INNER JOIN Person.Person AS c2 
 ON e2.BusinessEntityID = c2.businessentityid



