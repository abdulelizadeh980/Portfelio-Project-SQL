--Müştərilərin həftəlik tranzaksiya sayı və ortalama tranzaksiya məbləğini tapin.

select First_Name, datepart(YEAR,TransactionStartDateTime) as il,datepart(week,TransactionStartDateTime) as hefte, 
avg(TransactionAmount) as ortalama, count(TransactionID) as say
from Dim_Customers cus 
left join Texas tx
on cus.CardholderID=tx.CardholderID
Where TransactionStartDateTime is not null
group by First_Name, datepart(YEAR,TransactionStartDateTime), datepart(week,TransactionStartDateTime)
order by hefte
