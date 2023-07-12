-- This File orders All bands with F=Glam Rock as their main style ranked by longetivity

SELECT band_name, (CASE WHEN split = 0 THEN (2022 - formed) ELSE (split - formed) END ) AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;
