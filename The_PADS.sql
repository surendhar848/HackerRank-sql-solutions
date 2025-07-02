SELECT Name || '(' || SUBSTR(Occupation, 1, 1) || ')' AS output
FROM OCCUPATIONS
UNION ALL
SELECT 'There are a total of ' || COUNT(*) || ' ' || LOWER(Occupation) || 's.'
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY output;
