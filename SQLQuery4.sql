


select * from dbo.depositor
select * from dbo.borrower


select d.customername,d.account number,br.loannumber
from depositor d outer apply
(select * from borrower b where d.customernumber = b.customername)
br
