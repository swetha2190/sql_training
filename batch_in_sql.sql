declare @Rate int
select @Rate = MAX(Rate)
from HumanResources.EmployeePayHistory
print @Rate
go

select * from HumanResources.EmployeePayHistory

---accept salary into a variable @sal add a bonus of 5000 and print the result

select * from employeetable

declare @sal int
select @sal = salary 
from employeetable
where [employeeid]=2
print @sal+5000
go

--check d salary of employee whose empid is 2 if d sal is less than 50 increase sal to 20

declare @sal int
select @sal = salary 
from employeetable
while @sal < 100
begin
update  employeetable 
set salary= 20000
print @sal
end
go

select * from employeetable

select [BusinessEntityID], 'MaritalStatus' = 
case MaritalStatus
when 'M' then 'Married'
When 's' then 'Single'
else 'Not Specified'
end 
from HumanResources.Employee
go

-----while loop
declare @rate int 
select @rate = max(Salary) from employeetable

declare @i int 
set @i = 1 
while @i<=@rate
begin

declare @sal int
select @sal = Salary from employeetable
where EmployeeID = @i
if @sal < 30000
update Employeetable set Salary=15000
where EmployeeID =@i 
set @i = @i +1
end

select * from employeetable

---Que -> Insert an employee into a depatment which does not exists
--------Handel The exception Using Try and Catch 
--------Create a procedure Which Displays All employees Complie and execute 
--------Alter the procedure which diaplay employee Whose name Starts with 'S%'
--------Drop Procedure

select * from employeetable
select * from [department table]

begin try
insert into employeetable values(5,'india','F',15000,11,12)
end try
begin catch
select 'there was an error'+error_message() as ErrorMessage,
ERROR_LINE() as errorline,
ERROR_NUMBER() as errornumber ,
error_procedure() as errorprocedure,
error_severity() as errorseverity,
error_state() as errorstate
end catch
go

-----------stored procedure-----------------
 
 --------------create procedure-----------
create procedure employee_procedure
as
begin
select * from employeetable
end 

 ------------alter procedure-------------
alter procedure employee_procedure
as
begin
select * from employeetable
where gender like '%f'
end

exec employee_procedure

 
-----(1)create procedure which accepts empid,and display emp details.


create procedure GetEmpByid @empid int
as 
begin
select * from employeetable
where employeeid =@empid
end
exec GetEmpByid 3

-----(2)create a procedure which accepts slary AND EMPID and displays all  d employees of dat salary

create procedure GetEmpById1 @salary int, @empid int
as 
begin
update employeetable
set salary = @salary+500
end
exec GetEmpById1 15000,2
------(3) create a procedure which takes empid and delete that employee

create procedure GetEmpByid5 @empid int
as
begin
delete from employeetable
where employeeid = @empid
end
exec GetEmpByid5 3

-------(4) create  procedure which accepts all details and insert

create procedure GetEmpDetails
@empid int,@nation varchar(20),@gen varchar(10),@sal int, @deptid int, @managerid int
as
begin
insert into employeetable values(@empid,@nation,@gen,@sal,@deptid,@managerid)
end
exec GetEmpDetails 13,'india','m',13000,2,13

select * from employeetable



create PROCEDURE DISPLAYEMP
@EMPID INT, 
@CNTRY VARCHAR(50) OUTPUT ,
@SAL FLOAT OUTPUT ,
@DID INT OUTPUT 
AS 
BEGIN
SELECT @CNTRY=country,@SAL=salary,@DID=deparmentid
FROM employeetable
WHERE employeeid=@EMPID
END


CREATE PROCEDURE CALLDISPLAYSAL
@EMPID INT
AS
BEGIN
DECLARE @CNTRY VARCHAR(50)
DECLARE @SAL FLOAT 
DECLARE @DID INT 
EXEC DISPLAYEMP @EMPID,@CNTRY OUTPUT,@SAL OUTPUT,@DID OUTPUT
PRINT 'COUNTRY = '+ @CNTRY
PRINT 'SALARY = ' +CONVERT(VARCHAR(50), @SAL)
PRINT 'DEPARTMENT ID = ' +CONVERT(VARCHAR(50), @DID)
END


EXEC DISPLAYEMP 4, 'INDIA',15000,12
EXEC CALLDISPLAYSAL 4

SELECT * FROM employeetable


