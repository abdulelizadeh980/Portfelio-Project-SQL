SELECT TOP 10 
       cust.cardholderid,
       COUNT (distinct ATMID) AS distinct_atm_count
FROM Texas tr
JOIN dim_customers cust
  ON cust.cardholderid = tr.cardholderid
GROUP BY cust.cardholderid
ORDER BY distinct_atm_count DESC;