\x
SELECT  ring,
        COUNT(*) AS hexes,
        AVG(points) AS avg_points,
        SUM(CASE WHEN economy > 0 OR wild > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS economy_perc,
        SUM(CASE WHEN labs > 0 OR wild > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS labs_perc,
        SUM(CASE WHEN mines > 0 OR wild > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS mines_perc,
        SUM(CASE WHEN economy > 0 OR wild > 0 OR advanced_economy > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS adv_economy_perc,
        SUM(CASE WHEN labs > 0 OR wild > 0 OR advanced_labs > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS adv_labs_perc,
        SUM(CASE WHEN mines > 0 OR wild > 0 OR advanced_mines > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS adv_mines_perc,
        SUM(CASE WHEN ancients > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS ancients_perc,
        SUM(CASE WHEN discoveries > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS discovery_perc,
        SUM(CASE WHEN artifacts > 0 THEN 1 ELSE 0 END)::float / COUNT(*) AS artifacts_perc
FROM    hexes
GROUP BY ring
ORDER BY ring
;

