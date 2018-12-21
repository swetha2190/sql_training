

exec sp_configure filestream_access_level,2

reconfigure 

CREATE DATABASE TekSoft
 ON
 PRIMARY ( NAME = TekSoft,
 FILENAME = 'C:\shweta\TekSoft.mdf'),
 FILEGROUP FileStreamGroup CONTAINS FILESTREAM(NAME = TekSoft_Data,
 FILENAME = 'C:\shweta\TekSoft_Data')
 LOG ON ( NAME = Log1,
 FILENAME = 'C:\shweta\TekSoft.ldf')
 GO

create database personnel

sp_renamedb personnel,personnel2

CREATE TABLE HumanResources.EmployeeLeave
 (
 EmployeeID int NOT NULL, 
 LeaveStartDate datetime NOT NULL,
 LeaveEndDate datetime NOT NULL,
 LeaveReason varchar(100),
 LeaveType char(2)NOT NULL
 )

 CREATE TABLE Emp(
 EmpCode int IDENTITY(100,1),
 EmpName char(25) NOT NULL,
 DeptNo char(4) NOT NULL)

USE TekSoft
 GO
 CREATE TABLE EmpDetails
 (
 EmployeeID UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL 
 UNIQUE,
 EmployeeName varchar(30),
 EmployeeAddress varchar(100),
 EmployeeDept varchar(20),
 EmployeePhoto VARBINARY(MAX) FILESTREAM
 )
 GO


 CREATE TABLE Country_Location (
 CountryID int,
 CountryLocation geography
 )

 CREATE TABLE Emp(
 EmpCode int IDENTITY(100,1),
 EmpName char(25) NOT NULL,
 DeptNo char(4) NOT NULL)

 create table product
 (
 productid int primary key,

 name varchar(50) not null
 )

create table product2
 (
 productid int constraint pk primary key,

 name varchar(50) not null
 )
 
 sp_help product2

 insert into product values(1,'swetha'),(2,'swez'),(3,'shwe'),(4,'shweta')

 create table department
 (

 deptid int constraint pkey primary key,
 deptname varchar(20) not null,
 )
 create table employee
 (

 empid int constraint pk1 primary key,
 empname varchar(20) not null,
 deptid int foreign key(deptid) references department(deptid)
 )


 insert into department values(11,'hr'),(12,'it'),(13,'bb'),(14,'cc')
 insert into employee values(11,'hema',11),(12,'mama',11),(13,'coma',13),(14,'rama',12)

 select * from employee

 delete from department where deptid=11



ALTER TABLE employee
   DROP CONSTRAINT FK__employee__deptid__1CF15040   -- or whatever it's called

ALTER TABLE employee
   ADD CONSTRAINT FK__employee__deptid__1CF15040
   FOREIGN KEY (deptid) REFERENCES department(deptid) ON DELETE set null

   sp_help 'employee'

   -------create  rule rule_name as 
   --conditional_expression

   --------a variable name or a parameter or a argument in sql server starts with @
   --sp_bindrule 'ruletype','HumanResources.Employeeleave.leavetype'


   CREATE TABLE HumanResources.EmployeeLeave2
 (
 EmployeeID int,
 LeaveStartDate datetime CONSTRAINT cpkLeaveStartDate PRIMARY KEY(EmployeeID, LeaveStartDate),
 LeaveEndDate datetime NOT NULL,
 LeaveReason varchar(100),
 LeaveType char(2) CONSTRAINT chkLeave CHECK(LeaveType IN('CL','SL','PL'))
 )

 insert into HumanResources.EmployeeLeave2 values(101,'03/11/2016','04/11/2016','bored','el')

