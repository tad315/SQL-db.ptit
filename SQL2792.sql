select sum(tickets_sold) as num_tickets_sold
from events
where category = 'music' or category = 'theater'