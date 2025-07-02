
WITH RECURSIVE pattern(n, line) AS (
  SELECT 1, CAST(REPEAT('* ', 1) AS CHAR(100))
  UNION ALL
  SELECT n + 1, CAST(REPEAT('* ', n + 1) AS CHAR(100))
  FROM pattern
  WHERE n < 20
)
SELECT TRIM(line) AS patterns 
FROM pattern;

