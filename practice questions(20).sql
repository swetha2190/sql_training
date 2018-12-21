

--1
select * from Sales.Customer
--2
select CreditCardID,CardType,CardNumber,ExpYear from Sales.CreditCard
--3
select CustomerID,AccountNumber from Sales.Customer
where TerritoryID=4
--4
SELECT * from Sales.SalesOrderDetail
where UnitPrice> 2000
--5
SELECT * from Sales.SalesOrderDetail
where ProductID=843
--6
SELECT * from Sales.SalesOrderHeader
where ModifiedDate='2014-06-06'
--7
SELECT SalesOrderID,OrderQty,UnitPrice,LineTotal from Sales.SalesOrderDetail
--8
select * from Sales.SalesOrderDetail where UnitPrice BETWEEN 2000 AND 2100
--9
SELECT Name,CountryRegionCode,SalesYTD from Sales.SalesTerritory
WHERE TerritoryID=1
--10
SELECT * from Sales.SalesOrderHeader
WHERE TaxAmt>10000
--11
SELECT* FROM Sales.SalesTerritory
where Name in ('Canada','France','Germany')
--12
SELECT BusinessEntityID,TerritoryID from Sales.SalesPerson
where TerritoryID in (2,4)
--13
select * FROM Sales.CreditCard
where CardType='Vista' and ExpYear=2006
--14
SELECT * from Sales.SalesOrderHeader where ShipDate > '2013-07-12'
--15
select* from Sales.SalesOrderHeader
select SalesOrderID,OrderDate,Status,SubTotal from Sales.SalesOrderHeader
where ShipDate=2011-06-12 and SubTotal>10000
--16
select* from Purchasing.Vendor
where PurchasingWebServiceURL is not null
--17
select SalesOrderID,TotalDue from Sales.SalesOrderHeader
 order by TotalDue desc
 --18
 select* from Sales.SalesOrderHeader
 select SalesOrderID,Taxamt from Sales.SalesOrderHeader
 where SubTotal<2000 order by SubTotal

 --19
 SELECT SalesOrderID,SubTotal FROM Sales.SalesOrderHeader
 order by SubTotal 
 --20
 select max(LineTotal) as 'max' from Sales.SalesOrderDetail
 select avg(LineTotal) as 'avg' from Sales.SalesOrderDetail
 select min(LineTotal) as 'min' from Sales.SalesOrderDetail


 
