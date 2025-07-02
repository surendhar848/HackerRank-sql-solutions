SELECT 
    co.Continent, 
    FLOOR(AVG(ci.Population)) AS avg_population
FROM 
    CITY ci
JOIN 
    COUNTRY co 
    ON ci.CountryCode = co.Code
GROUP BY 
    co.Continent;
