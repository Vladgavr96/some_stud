SELECT COUNT(cl.Call_id)*r.money 
FROM call_logs cl, rates r 
WHERE cl.call_to NOT IN(Select Phone_Number FROM numbers) AND r.id = 3;  