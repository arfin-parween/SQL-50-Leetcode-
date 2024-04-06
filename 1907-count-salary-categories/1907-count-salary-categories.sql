# Write your MySQL query statement below
select "Low Salary" as category ,
sum(if(income < 20000,1,0)) as accounts_count
from accounts
union
select "Average Salary" as category ,
sum(if(income between 20000 and 50000,1,0)) as accounts_count
from accounts
union
select "High Salary" as category ,
sum(if(income > 50000,1,0)) as accounts_count
from accounts