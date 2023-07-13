-- This SQL Script ranks country origin of bands
-- ordered by number of non-unique fans


SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY ORIGIN
ORDER BY nb_fans DESC;
