--using cube
select Country,Gender,sum(salary) as 'totalsalary'
from dbo.employeetable group by cube(Country,Gender)

--or we can write with cube also

select Country,Gender,sum(salary) as 'totalsalary'
from dbo.employeetable group by country,gender with cube

--using rollup
select Country,sum(salary) as 'totalsalary'
from dbo.employeetable group by rollup(Country,Gender)
--other option for group wise grandtotal


select Country,Gender,sum(salary) as 'totalsalary'
from dbo.employeetable group by 
grouping sets
(
(country,gender),
(gender),
(country),
()
)
select Country,gender,sum(salary) as 'totalsalary'
from employeetable group by Country,Gender
union all
select Country,null,sum(salary) as 'totalsalary'
from employeetable group by country
union all 
select null,Gender,sum(salary) as 'totalsalary'
from employeetable group by gender










