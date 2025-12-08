select t.username, t.dept, t.number, c.title
from Teaches t
join Class c on c.number = t.number
order by t.username
limit 2