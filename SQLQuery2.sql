
--Ən böyük məbləğli tranzaksiyanı edən şəxsin adı və hansı məbləğdə tranzaksiya etdib

SELECT TOP 1 WITH TIES
    first_name,
    last_name,
    transactionamount
FROM Texas tr 
RIGHT JOIN dim_customers cust
    ON tr.cardholderid = cust.cardholderid
	ORDER BY TransactionAmount desc 