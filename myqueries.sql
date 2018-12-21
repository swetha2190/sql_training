select * from HumanResources.Department

select * from HumanResources.Employee where 

select Name=  left(FirstName,1)+'. '+LastName FROM Person.Person

select * from Person.Person
select dateadd(mm,3,'2018-12-05')
select MonthName = datename(month,convert(datetime,'2018-12-05'))
--select BusinessEntityID,'Rate'= round(employeePayHistory) 
select exp(2.2)
select floor(13.34)    
select ceiling(14.45) 
select round(12.67,1)

select power(2,3)   
select * from HumanResources.Shift

select DATEADD(HH,2,EndTime) from HumanResources.Shift
select BusinessEntityID,Rate,rank() over (order by rate desc) as rank from 
HumanResources.EmployeePayHistory
select BusinessEntityID,Rate,row_number() over (order by rate desc) as rank from 
HumanResources.EmployeePayHistory
select BusinessEntityID,Rate,dense_rank() over (order by rate desc) as rank from 
HumanResources.EmployeePayHistory
select host_id() as 'HOSTID'
select USER_ID('swetha')
select HOST_NAME() as HostName
select db_id('AdventureWorks2012') as databaseID

select db_name(1) as databaseName

select * from HumanResources.Employee

select BusinessEntityID,UPPER(JobTitle) as 'kam karne ki jagah',datediff(yyyy,BirthDate,getdate()) as age
from HumanResources.Employee
where JobTitle in ('Marketing Manager','Marketing Specialist')


/*grouping functions

avg(),count(),min(),*/

select 'Average Rate'=avg (Rate) from HumanResources.EmployeePayHistory
select 'Minimum Rate'=min (Rate) from HumanResources.EmployeePayHistory
select 'Maximum Rate'=max (Rate) from HumanResources.EmployeePayHistory
select 'sum'=sum (DISTINCT Rate) from HumanResources.EmployeePayHistory

SELECT COUNT(BusinessEntityID) as 'count',JobTitle from HumanResources.Employee 
group by JobTitle

select JobTitle ,max(VacationHours) as max from HumanResources.Employee
group by JobTitle
having max(VacationHours)>10 

--rollup and cube instead of compute and compute by

--create a table called employee table with the following columns country,gender,salary,employeeid









                                                                                                                                                                                                                             