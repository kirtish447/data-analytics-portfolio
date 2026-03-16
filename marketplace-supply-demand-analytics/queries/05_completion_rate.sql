SELECT
    city,
    AVG(completed_trips * 1.0 / demand_count) AS completion_rate
FROM marketplace_data
GROUP BY city
ORDER BY completion_rate DESC;
