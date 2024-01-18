-- Import the metal_bands table dump
-- (Assuming the metal_bands.sql file contains the table dump)
-- If you need to load the data first, use the following:
-- mysql -uroot -p holberton < metal_bands.sql

-- Query to rank country origins of bands by number of fans
SELECT origin, COUNT(fan_id) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
