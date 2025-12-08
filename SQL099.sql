select s.name
from Customer s
where s.referee_id <> 2 or s.referee_id is null