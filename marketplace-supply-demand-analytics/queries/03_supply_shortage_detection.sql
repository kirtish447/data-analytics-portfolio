SELECT
    city,
    COUNT(*) AS shortage_days
FROM marketplace_data
WHERE demand_count > supply_count
GROUP BY city
ORDER BY shortage_days DESC;
