SELECT 
    company_id,
    total_amount_energy,
    total_esg
FROM (
    SELECT 
        e.company_id,
        SUM(i.amount) AS total_amount_energy,
        (e.environment + e.social + e.governance) AS total_esg
    FROM esg_factors e
    JOIN impact_investments i 
        ON e.company_id = i.company_id
    WHERE i.sector LIKE '%Energy%'
    GROUP BY e.company_id, total_esg
) AS x
WHERE total_amount_energy > 10000000
  AND total_esg > 7.5
ORDER BY total_amount_energy DESC;
