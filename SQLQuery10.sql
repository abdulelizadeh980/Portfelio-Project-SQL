--Müştəri Tiplərinə Görə Ümumi Tranzaksiya Məbləği

select AccountType, sum(cast(TransactionAmount as bigint))
from Texas tx
right join Dim_Customers cus
on tx.CardholderID=cus.CardholderID 
group by AccountType 
