

-- if there are no nulls in output and there is a keyword called join then it is inner join

select e.BusinessEntityID,e.JobTitle,eph.Rate,eph.PayFrequency
from HumanResources.Employee e
 left outer join HumanResources.EmployeePayHistory eph
on e.BusinessEntityID = eph.BusinessEntityID







