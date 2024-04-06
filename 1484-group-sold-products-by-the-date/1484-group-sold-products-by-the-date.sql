# Write your MySQL query statement below
select sell_date, count(distinct product) as num_sold,
GROUP_CONCAT(distinct product order by product separator ',') as products
from Activities
group by sell_date
order by sell_date