# Write your MySQL query statement below
/*Select w1.id 
from Weather w1,Weather w2
where datediff(w1.recordDate,w2.recordDate)=1 
and w1.temperature > w2.temperature; */
/*select w1.id 
from Weather w1
join Weather w2
where datediff(w1.recordDate,w2.recordDate)=1 
and w1.temperature > w2.temperature;*/
/*select w1.id 
from Weather w1
join Weather w2
on datediff(w1.recordDate,w2.recordDate)=1 
and w1.temperature > w2.temperature;*/
/*select w1.id 
from Weather w1
join Weather w2
where subdate(w1.recordDate,1)=w2.recordDate
and w1.temperature > w2.temperature;*/
select w1.id 
from Weather w1
join Weather w2
on subdate(w1.recordDate,1)=w2.recordDate
and w1.temperature > w2.temperature;