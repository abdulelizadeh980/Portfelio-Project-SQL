--Hər Müştərinin Ən Çox Tranzaksiya Etmiş Olduğu ATM

with count_transaction as (
	select tx.CardholderID, cus.ATMID, count(tx.TransactionID) as Transaction_Count
	from Texas tx 
	join Dim_Customers cus 
	on tx.CardholderID=cus.CardholderID
	group by tx.CardholderID,cus.ATMID)

	select CardholderID, ATMID, Max(Transaction_Count) as max 
	from count_transaction
	group by CardholderID, ATMID
	order by CardholderID
