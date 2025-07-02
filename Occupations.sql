SELECT [Doctor], [Professor], [Singer], [Actor] 
FROM (
    SELECT 
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS row_num,
        [Name],
        [Occupation] 
    FROM Occupations
) AS source 
PIVOT (
    MIN([Name]) FOR [occupation] IN ([Doctor], [Professor], [Singer], [Actor])
) AS pvt 
ORDER BY row_num;
