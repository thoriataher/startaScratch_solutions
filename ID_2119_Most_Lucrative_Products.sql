-- Question

-- You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).
-- Output their IDs and the total revenue.

select 
    product_id,
    SUM(cost_in_dollars * units_sold) as revenue
from online_orders
WHERE date_sold BETWEEN '2022-01-01' AND '2022-06-30'
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 5;

-- Expected Output 
product_id	revenue
2	207
3	201
5	199
1	65
6	56
