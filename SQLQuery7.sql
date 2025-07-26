
--BirthDate sütununa əsasən müştəriləri yaş qruplarına ayırın və ortalama tranzaksiya məbləğini göstərin. 
--(25 yaşdan aşağı, 25-40 yaş, 41-60 yaş ve 60 yaşdan yuxarı)

SELECT 
    CASE 
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) < 25 THEN 'under 25'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) BETWEEN 25 AND 40 THEN '25-40'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'over 60'
    END AS age_category,
    avg(CAST(transactionamount AS BIGINT)) as ortalama_mebleg
FROM dim_customers cust
RIGHT JOIN Texas tr
    ON cust.cardholderid = tr.cardholderid
GROUP BY 
    CASE 
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) < 25 THEN 'under 25'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) BETWEEN 25 AND 40 THEN '25-40'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'over 60'
    END;
