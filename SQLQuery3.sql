
--Heç tranzaksiya etməmiş neçə müştərinin sayının təyini

SELECT first_name,last_name 
FROM dim_customers cust
LEFT JOIN Texas tr 
    ON tr.cardholderid = cust.cardholderid
WHERE tr.cardholderid IS NULL;
