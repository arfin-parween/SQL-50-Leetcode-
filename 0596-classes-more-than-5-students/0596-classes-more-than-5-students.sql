# Write your MySQL query statement below
select class
from courses
group by class
having count(student) >=5