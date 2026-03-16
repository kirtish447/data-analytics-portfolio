SELECT
    city,
    AVG(demand_count * 1.0 / supply_count) AS demand_pressure
FROM marketplace_data
GROUP BY city
ORDER BY demand_pressure DESC;
