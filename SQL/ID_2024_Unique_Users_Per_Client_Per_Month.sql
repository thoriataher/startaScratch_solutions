-- Question--
-- Write a query that returns the number of unique users per client per month

-- Table: fact_events

-- Solution 
-- Select the client_id (dessktop, mobile,..)
-- Extract the month from the event_date
-- Count the number of unique users Using DISTINCT
-- Group by client_id and month (each client with a specific month)

select 
    client_id, 
    MONTH(time_id) as month, -- parsin the moth 
    COUNT(DISTINCT user_id) as users_num -- using DISTINCT to avoid duplicates
from 
    fact_events
GROUP BY 
    client_id, month; -- grouping each client with a specidic month 


-- Output
client_id	month	users_num
desktop	     2	        13
desktop	     3	        16
desktop	     4	        11
mobile	     2	        9
mobile	     3	        14
