SELECT *
  FROM Texas tr
  JOIN dim_customers cust
    ON tr.cardholderid = cust.cardholderid
 WHERE cust.first_name IN (
       SELECT cust.first_name
         FROM Texas tr
         LEFT JOIN dim_customers cust 
           ON tr.cardholderid = cust.cardholderid
        GROUP BY cust.first_name
       HAVING COUNT(cust.first_name) = 1
);
