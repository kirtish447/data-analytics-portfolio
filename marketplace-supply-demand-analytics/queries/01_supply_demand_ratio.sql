SELECT
    city,
    AVG(supply_count) AS avg_supply,
    AVG(demand_count) AS avg_demand,
    AVG(supply_count * 1.0 / demand_count) AS supply_demand_ratio
FROM marketplace_data
GROUP BY city
ORDER BY supply_demand_ratio;
