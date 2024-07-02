-- Average csat_score
SELECT AVG(csat_score) FROM calls; 

-- Average call duration
SELECT AVG(call_duration_in_minutes) FROM calls; 

-- Number of calls by reason
SELECT reason,COUNT(id) AS frequency,AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes FROM calls
GROUP BY reason ORDER BY frequency DESC; 

-- Sentiment 
SELECT sentiment,COUNT(id) AS frequency,AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes FROM calls 
GROUP BY sentiment ORDER BY frequency DESC;

-- State 
SELECT state,COUNT(id) AS frequency,
AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes
FROM calls 
GROUP BY state ORDER BY frequency DESC;

-- Channel
SELECT channel,COUNT(id) AS frequency,
AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes
FROM calls 
GROUP BY channel ORDER BY frequency DESC;

-- response time
SELECT response_time, 
COUNT(id) AS frequency, 
AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes
FROM calls
GROUP BY response_time ORDER BY frequency DESC;

-- Call center
SELECT call_center, 
COUNT(id) AS frequency, 
AVG(csat_score) AS average_score,
AVG(call_duration_in_minutes) AS average_call_duration_in_minutes
FROM calls
GROUP BY call_center ORDER BY frequency DESC;