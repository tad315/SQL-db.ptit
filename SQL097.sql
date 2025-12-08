select a.machine_id, 
       round(avg(e.timestamp - s.timestamp), 3) as processing_time
from Activity a
join Activity s on
    a.machine_id = s.machine_id
    and a.process_id = s.process_id
    and s.activity_type = 'start'
join Activity e on
    a.machine_id = e.machine_id
    and a.process_id = e.process_id
    and e.activity_type = 'end'
group by a.machine_id