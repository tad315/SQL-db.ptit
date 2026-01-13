select e.name, e.category, e.tickets_sold
from events e
where e.category in ('music', 'theater') 
  and e.tickets_sold > (
    select avg(e2.tickets_sold) 
    from events e2
    where e2.category = e.category
  )
order by e.tickets_sold desc 