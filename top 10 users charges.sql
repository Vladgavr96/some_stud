SELECT Name,a.UID, COUNT(cl.Call_id)*r.money as price
FROM  rates r, call_logs cl  JOIN accounts a ON a.UID=cl.UID
WHERE cl.call_to NOT IN(Select Phone_Number FROM numbers) AND r.id = 3 Group by UID order by price DESC limit 10;  