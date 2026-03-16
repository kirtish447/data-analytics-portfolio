SELECT
    city,
    AVG(surge_multiplier) AS avg_surge,
    MAX(surge_multiplier) AS max_surge
FROM marketplace_data
GROUP BY city
ORDER BY avg_surge DESC;
