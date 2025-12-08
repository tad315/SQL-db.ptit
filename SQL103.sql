select i.username, c.dept, c.number
from Instructor i
join Teaches t on i.username = t.username
join Class c on c.dept = t.dept and c.number = t.number
order by i.lname desc
limit 2