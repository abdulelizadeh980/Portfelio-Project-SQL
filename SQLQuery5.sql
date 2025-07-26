
--Ən uzun müddətli 10 transaksiyanı tapmaq.

select top 10 with ties TransactionID, 
datediff(MINUTE,transactionstartdatetime,transactionenddatetime) as duration 
from Texas tr 
order by duration desc