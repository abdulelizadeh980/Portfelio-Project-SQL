select First_Name,Last_Name, year(TransactionStartDateTime) as Year , sum(TransactionAmount) as Sum
from Texas tx
right join Dim_Customers cus
on tx.CardholderID=cus.CardholderID 
where tx.TransactionStartDateTime is not null 
group by First_Name,Last_Name,TransactionStartDateTime
order by First_Name,Last_Name,Year,Sum desc 
