

What is the population of the US? (HINT: 278357000)

SELECT name,population
FROM country
WHERE  name = 'United States"

What is the area of the US? (HINT: 9.36352e+06)

SELECT name,population
FROM country
WHERE  name = 'United States"

Which countries gained their independence before 1963?

SELECT name,population
FROM country
WHERE  indepyear >= 1963


List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name,population
FROM country
WHERE  population < 3e+7 AND lifeexpectancy > 45 AND continent = 'Africa'


Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, governmentform
FROM country
WHERE  governmentform LIKE '%Republic'   143 queries
                            '%Republic'  122 queries




Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE  governmentform LIKE '%Republic%'  indepyear > 1945


Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE indepyear > 1945 AND NOT governmentform = '%Republic%' 

--------------------------------------------------------------------------------------------------------

ORDER BY

1) Which fifteen countries have the lowest life expectancy? 
(HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name
FROM country
ORDER BY lifeexpectancy
LIMIT 15


2) Which fifteen countries have the highest life expectancy? 
(HINT: starts with Andorra, ends with Spain)

SELECT name
FROM country
WHERE lifeexpectctancy > 1
ORDER BY lifeexpectancy DESC
LIMIT 15

3) Which five countries have the lowest population density 
(density = population / surfacearea)? (HINT: starts with Greenland)

4) Which countries have the highest population density?(HINT: starts with Macao)

5) Which is the smallest country, by area and population (first by area - .4, then by population - 50)?

6) Which is the biggest country, by area and population (first by area - 1.70754e+07, then by population - 1277558000)?