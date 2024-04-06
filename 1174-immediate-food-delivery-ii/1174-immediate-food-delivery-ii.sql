# Write your MySQL query statement below
SELECT 
    ROUND(avg(IF(min_order_date = min_customer_pref_delivery_date, 1, 0)) * 100 , 2) AS immediate_percentage 
FROM (SELECT MIN(order_date) AS min_order_date, MIN(customer_pref_delivery_date) AS min_customer_pref_delivery_date 
    FROM Delivery 
    GROUP BY customer_id) AS min_delivery_table;