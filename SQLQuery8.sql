
--ATMID-yə görə hər bir ATM-də yerli və qeyri-yerli müştərilərin tranzaksiya sayını göstərir.

SELECT ATMID,
       SUM(CASE WHEN cust.ISMEGABANK = 1 THEN 1 ELSE 0 END) AS local_transactions,
       SUM(CASE WHEN cust.ISMEGABANK = 0 THEN 1 ELSE 0 END) AS non_local_transactions
FROM Texas tr
JOIN dim_customers cust
  ON tr.cardholderid = cust.cardholderid
GROUP BY ATMID;