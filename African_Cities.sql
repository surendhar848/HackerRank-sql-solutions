select city.name from city left join country on CITY.CountryCode = COUNTRY.Code
where country.continent = 'Africa';
