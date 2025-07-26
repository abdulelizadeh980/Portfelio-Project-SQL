--Ən Çox Müxtəlif ATM-lərdən İstifadə Edən İlk 10 Müştəri

SELECT TOP 10 
       cust.cardholderid,
       COUNT (distinct ATMID) AS distinct_atm_count
FROM Texas tr
JOIN dim_customers cust
  ON cust.cardholderid = tr.cardholderid
GROUP BY cust.cardholderid
ORDER BY distinct_atm_count DESC;
