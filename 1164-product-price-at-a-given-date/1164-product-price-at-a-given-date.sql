# Write your MySQL query statement below
select product_id ,  new_price as price
from products
where (product_id, change_date) IN
(
    select product_id, max(change_date)
    from products
    where change_date <='2019-08-16'
    group by product_id
)
UNION 
select product_id ,  10 as price
from products
where (product_id) not IN
(
    select product_id
    from products
    where change_date <='2019-08-16'
    group by product_id
)