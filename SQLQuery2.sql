
-------cross join
select  colour,shape from colour,shape 
-------full outer join

select e.employeeID,e.country,d.gender,d.salary,e.managerid from employeetable e join employeetable d 
on e.employeeid=d.


---------21

select  sum(LineTotal) as 'bigtotal' from Sales.SalesOrderDetail
----------22
select top 5 SalesOrderID from Sales.SalesOrderHeader where datepart(yyyy,OrderDate)= 2011
order by SubTotal
---------23
select * from Sales.Currency
select * from Sales.Currency where Name like '%Dollar'
---------24
select Name  from Sales.SalesTerritory where Name like 'N%'
---------25
select BusinessEntityID, TerritoryID,SalesQuota from Sales.SalesPerson
where SalesQuota is not null
---------26
select SalesOrderID,ProductID,sum(LineTotal) from Sales.SalesOrderDetail group by SalesOrderID

----group by dosnt have product id
----------27

select ProductID,SUM(LineTotal)  as Totalcost from Sales.SalesOrderDetail
group by ProductID having sum(LineTotal) >'10000'
------29
select top 3 BusinessEntityID from Sales.SalesPerson order by Bonus desc
-------30
select Name from Sales.Store where Name like '%Bike%'
select * from Sales.Store
----------31
select OrderDate,sum(SubTotal)  as ordertotal from Sales.SalesOrderHeader group by OrderDate
--------------32
select sum(UnitPrice),sum(LineTotal), sum(UnitPrice+LineTotal),ProductID 
from Sales.SalesOrderDetail 
where ProductID in ('774','777')
group by cube(ProductID)
-----------33
select SalesOrderID,max(UnitPrice),min(UnitPrice)
from Sales.SalesOrderDetail
