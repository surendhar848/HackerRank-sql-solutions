
WITH RECURSIVE pattern(n, line) AS (
  SELECT 20, REPEAT('* ', 20)
  UNION ALL
  SELECT n - 1, REPEAT('* ', n - 1)
  FROM pattern
  WHERE n > 1
)
SELECT TRIM(line) AS Pattern_Line
FROM pattern;
