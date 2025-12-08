select d.gender, count(*) as total_donations
from Donors d
join Donations t on t.donor_id = d.id 
group by d.gender