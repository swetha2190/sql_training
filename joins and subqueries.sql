
----------assignment 17th dec

------1

select ,Name from Sales.SalesPerson

select sp.BusinessEntityID,st.Name from Sales.SalesPerson sp join Sales.SalesTerritory st
on sp.TerritoryID=st.TerritoryID
---------2
select sp.BusinessEntityID,sp.TerritoryID,st.Name from Sales.SalesPerson sp join Sales.SalesTerritory st
on sp.TerritoryID=st.TerritoryID
------3

--------Order ID Product ID Order Date

select sod.ProductID,soh.SalesOrderID,soh.OrderDate from 
Sales.SalesOrderHeader soh join Sales.SalesOrderDetail sod on 
soh.SalesOrderID=sod.SalesOrderID
--------4
---id,territory name

select sp.BusinessEntityID,st.Name from Sales.SalesPerson sp
left outer join Sales.SalesTerritory st
 on sp.TerritoryID=st.TerritoryID

---------------5
----SalesOrderID Territory Name Month Year

select datename(mm,OrderDate) as month,datename(yyyy,OrderDate) as year,
soh.SalesOrderID,st.Name from Sales.SalesOrderHeader soh
join Sales.SalesTerritory st on soh.TerritoryID=st.TerritoryID

------6
Write a query to display the order number, territory name, order date, and the quarter in
which each order was placed, in the following format.

select  datepart(QQ,OrderDate) as qdate,soh.SalesOrderID,st.Name,soh.OrderDate from Sales.SalesOrderHeader soh
join Sales.SalesTerritory st on st.TerritoryID=soh.TerritoryID
---------7
----Write a query to display the total amount due for all the sales orders rounded off to a
--whole number. In addition, display the sales order ID and the type of credit card through
--which the payment was made.

select round(TotalDue,0),SalesOrderID,sc.CardType
from Sales.SalesOrderHeader soh join Sales.CreditCard sc 
on sc.CreditCardID=soh.CreditCardID

---------8
--Write a query to display all the country region codes along with their corresponding
---territory IDs.
select st.TerritoryID,src.CountryRegionCode from
[Sales].[CountryRegionCurrency] src join [Sales].[SalesTerritory] st
on st.CountryRegionCode = src.CountryRegionCode
----------9
--Write a query to display the total amount due for all the orders in the following format.
--Order Value

SELECT 'Order Value' = 'The total amount due for the Sales Order ID: ' 
+ CONVERT(Varchar(10),SalesOrderID) + ' is $' + 
CONVERT(Varchar(10), TotalDue) FROM Sales.SalesOrderHeader

-----10
---Write a query to display the order date along with the sales order ID and the territory
---name. The order date should be displayed in the dd/mm/yyyy format.

SELECT SalesOrderID, Name, Convert(Char(10), OrderDate, 103) as 'Order Date' 
FROM Sales.SalesOrderHeader s JOIN Sales.SalesTerritory t 
ON t.TerritoryID = s.TerritoryID

-------11
--Write a query to display the order ID and the territory name of the orders where the month
--of the order is May and the year is 2004.

select soh.SalesOrderID,st.Name from Sales.SalesOrderHeader soh
join Sales.SalesTerritory st on
st.TerritoryID=soh.TerritoryID and datename(mm,OrderDate)='may' and datename(yyyy,OrderDate)= '2011'
-------12
--Write a query to display the contact ID of the customers that have the ‘Vista’ credit card.

SELECT ct.[ContactTypeID], cc.CardType FROM [Person].[ContactType] ct
 JOIN Sales.CreditCard cc ON
 ct.ContactTypeID = cc.CreditCardID WHERE CardType = 'Vista'
 -------13

 --Write a query to display the sales order IDs of the orders received from the Northeast
--territory.
select soh.SalesOrderID,st.Name from Sales.SalesOrderHeader soh
 join Sales.SalesTerritory st on soh.TerritoryID = st.TerritoryID 
 where st.Name like '%Northeast%' 
  
--------------14
--Create a report containing the sales order ID of those orders where the total value is
--greater than the average of the total value of all the orders.

select SalesOrderID FROM Sales.SalesOrderHeader
where TotalDue > (select avg(TotalDue) from Sales.SalesOrderHeader)

---------15
--Write a query to display the sales order ID, the order detail ID, and the total value of those
--orders where the total value is greater than the maximum of the total value of order ID 43662. 

select SalesOrderID,TotalDue FROM Sales.SalesOrderHeader
where TotalDue > (select max(TotalDue) from Sales.SalesOrderHeader where SalesOrderID= 43662)

-------16
--Write a query to display the sales order IDs and the credit card IDs of those cards which
--are expiring in the year 2007.

SELECT SalesOrderID, CreditCardID FROM Sales.SalesOrderHeader 
WHERE CreditCardID IN (SELECT CreditCardID FROM Sales.CreditCard WHERE ExpYear = 2007)
------------17
select cc.[CardNumber], p.FirstName from [Sales].[CreditCard] cc ,Person.Person p 
 where cc.CreditCardID = p.BusinessEntityID and p.[FirstName] = 'Catherine'

