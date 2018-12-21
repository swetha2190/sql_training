select * from Sales.SalesOrderDetail

select avg(OrderQty) as 'AVG',ProductID FROM Sales.SalesOrderDetail 
group by  ProductID
