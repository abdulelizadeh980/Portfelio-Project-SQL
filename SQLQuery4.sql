
--4.Hər müştəriyə görə tranzaksiya məbləği ortalamasının tapılması və yalnız tam hissə məbləğlərin yuvarlaşdırılaraq kəsr hissəsiz ekrana çıxardılması. 
--Burada müştəri adlarını ekrana çıxararkən bütün adların bütün simvollarının böyük hərflə qeyd edilməsi lazımdır.

SELECT 
    cust.cardholderid,
    UPPER(first_name) AS first_name,
    UPPER(last_name) AS last_name,
    ROUND(AVG(transactionamount), 0) AS average_transaction_amount
FROM Texas tr
JOIN dim_customers cust
    ON tr.cardholderid = cust.cardholderid
GROUP BY 
    cust.cardholderid,
    first_name,
    last_name;
