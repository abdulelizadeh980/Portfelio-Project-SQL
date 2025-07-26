with rank_table as (
select tx.CardholderID, tx.TransactionAmount,
Dense_rank () over (Partition by tx.CardholderID order by tx.TransactionAmount desc) as RN
from texas tx)

select CardholderID, 
max (Case when RN=1 then TransactionAmount end) as First_Amount,
max (case when RN=2 then TransactionAmount end) as Second_Amount,
max (Case when RN=1 then TransactionAmount end) - max (case when RN=2 then TransactionAmount end) as Difference 
from rank_table
Group by CardholderID
