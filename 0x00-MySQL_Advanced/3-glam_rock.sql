-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
SELECT
    band_name,
    IFNULL(
        YEAR('2022-01-18') - CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(lifespan, ' - ', 1), '-', -1) AS SIGNED),
        0
    ) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', main_style) > 0
ORDER BY lifespan DESC;
