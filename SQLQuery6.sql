
--Hər bir Tranzaksiya Tipinə Görə Ümumi Tranzaksiya Sayı və Toplam Məbləğin tapilmasi.

SELECT 
    transactiontypename, 
    COUNT(*) AS Cnt,
  SUM(CAST(transactionamount AS BIGINT))
FROM Texas tr
JOIN Dim_Transaction_type tr_type
    ON tr.transactiontypeid = tr_type.transactiontypeid
GROUP BY 
    transactiontypename;
	EXEC sp_help 'texas';
    