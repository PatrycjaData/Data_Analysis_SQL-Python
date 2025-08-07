SELECT country.country,
COUNT(city.city_id) AS 'Number_of_cities'
FROM city
INNER JOIN country ON city.country_id = country.country_id
GROUP BY country.country
HAVING COUNT(city.city_id) > 4;