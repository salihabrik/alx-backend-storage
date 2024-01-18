-- Import the metal_bands table dump
-- Query to rank country origins of bands by number of fans
SELECT origin, COUNT(fan_id) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
