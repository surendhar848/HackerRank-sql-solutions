WITH Ordered AS (
  SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
         COUNT(*) OVER() AS cnt
  FROM STATION
)
SELECT decimal(ROUND(AVG(LAT_N), 4),10,4) AS median
FROM Ordered
WHERE rn = (cnt + 1) / 2 
   OR rn = (cnt + 2) / 2;
