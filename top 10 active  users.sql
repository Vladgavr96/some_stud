SELECT a.UID,a.Name,COUNT(c.Call_id) AS calls 
FROM call_logs c JOIN accounts a ON a.UID = c.UID  
GROUP BY c.UID ORDER BY calls DESC LIMIT 10; 