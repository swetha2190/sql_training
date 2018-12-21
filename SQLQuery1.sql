

select * from dbo.employeetable
select * from dbo.[department table]
----- normal join
select emp.employeeid,emp.gender,dep.[department name],dep.location from dbo.employeetable emp join dbo.[department table] dep
on emp.[deparment id]= dep.[department id]
------left outer join
select *,dep.[department name] from dbo.employeetable emp left join dbo.[department table] dep
on emp.[deparment id]= dep.[department id]
----- cross join
select emp.employeeid,* from dbo.employeetable emp right join
 dbo.[department table] dep
on emp.[deparment id]= dep.[department id]

