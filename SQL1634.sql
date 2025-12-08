select round(
            100.00 * sum(case
                            when Gender = 'Female' and City = 'Sydney' then 1 else 0
                        end) 
            / nullif (sum(case
                            when City = 'Sydney' then 1 else 0
                        end), 0)
        ,2) as 'Female_Percentage_Sydney(%)'
from Vaccinations;