SELECT
    date,
    SUM(supply_count) AS total_supply,
    SUM(demand_count) AS total_demand,
    SUM(completed_trips) AS total_completed_trips,
    AVG(price) AS avg_price,
    AVG(surge_multiplier) AS avg_surge
FROM marketplace_data
GROUP BY date
ORDER BY date;
