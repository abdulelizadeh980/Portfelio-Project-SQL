
--Hər müştərinin sonuncu tranzaksiyasının tarixi və həmin tarixdən bugünədək neçə gün keçdiyinin ekrana çıxardılması.

select first_name,
       last_name,
	   max (transactionstartdatetime) as lasttransactiondate,
       datediff (day,max (transactionstartdatetime) , GETDATE()) as sincelasttransaction 
from Texas tx 
right join Dim_Customers cus 
on tx.CardholderID=cus.CardholderID
group by first_name,last_name 

