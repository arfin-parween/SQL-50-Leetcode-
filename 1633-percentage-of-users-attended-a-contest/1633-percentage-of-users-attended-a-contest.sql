# Write your MySQL query statement below
select r.contest_id ,
round(count(distinct u.user_id)*100/( select count(user_id)from users) ,2)as percentage
from users u
join register r
on u.user_id = r.user_id
group by r.contest_id
order by percentage desc, r.contest_id