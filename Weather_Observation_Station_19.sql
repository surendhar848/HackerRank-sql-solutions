SELECT 
  cast(ROUND(
    SQRT(
      POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
      POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ), 
    4) as decimal(10,4)
  ) AS EUCLIDEAN_DISTANCE
FROM STATION;
