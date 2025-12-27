select material, avg(recycling_rate) as avg_rate
from recycling_rates
where year between 2018 and 2019
group by material
order by avg_rate desc
limit 1
