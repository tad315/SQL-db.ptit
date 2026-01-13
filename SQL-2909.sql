select category, sum(tickets_sold) as total_tickets
from events
where category = 'music' or category = 'theater'
group by category
having total_tickets >= 200
order by total_tickets desc