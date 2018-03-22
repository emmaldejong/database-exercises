USE world;

# What languages are spoken in Santa Monica?
-- +------------+------------+
-- | Language   | Percentage |
-- +------------+------------+
-- | Portuguese |        0.2 |
-- | Vietnamese |        0.2 |
-- | Japanese   |        0.2 |
-- | Korean     |        0.3 |
-- | Polish     |        0.3 |
-- | Tagalog    |        0.4 |
-- | Chinese    |        0.6 |
-- | Italian    |        0.6 |
-- | French     |        0.7 |
-- | German     |        0.7 |
-- | Spanish    |        7.5 |
-- | English    |       86.2 |
-- +------------+------------+
SELECT cl.Language AS Language_Spoken, cl.Percentage AS Percentage
FROM countrylanguage AS cl
  JOIN country AS c
    ON cl.CountryCode = c.Code
  JOIN city AS ci
    ON c.Code = ci.CountryCode
WHERE ci.Name = 'Santa Monica'
ORDER BY Percentage;


# How many different countries are in each region?
-- +---------------------------+---------------+
-- | Region                    | num_countries |
-- +---------------------------+---------------+
-- | Micronesia/Caribbean      |             1 |
-- | British Islands           |             2 |
-- | Baltic Countries          |             3 |
-- | Antarctica                |             5 |
-- | North America             |             5 |
-- | Australia and New Zealand |             5 |
-- | Melanesia                 |             5 |
-- | Southern Africa           |             5 |
-- | Northern Africa           |             7 |
-- | Micronesia                |             7 |
-- | Nordic Countries          |             7 |
-- | Central America           |             8 |
-- | Eastern Asia              |             8 |
-- | Central Africa            |             9 |
-- | Western Europe            |             9 |
-- | Eastern Europe            |            10 |
-- | Polynesia                 |            10 |
-- | Southeast Asia            |            11 |
-- | Southern and Central Asia |            14 |
-- | South America             |            14 |
-- | Southern Europe           |            15 |
-- | Western Africa            |            17 |
-- | Middle East               |            18 |
-- | Eastern Africa            |            20 |
-- | Caribbean                 |            24 |
-- +---------------------------+---------------+
SELECT Region, COUNT(*) AS num_countries
FROM country
GROUP BY Region
ORDER BY COUNT(*);

# What is the population for each region?
-- +---------------------------+------------+
-- | Region                    | population |
-- +---------------------------+------------+
-- | Eastern Asia              | 1507328000 |
-- | Southern and Central Asia | 1490776000 |
-- | Southeast Asia            |  518541000 |
-- | South America             |  345780000 |
-- | North America             |  309632000 |
-- | Eastern Europe            |  307026000 |
-- | Eastern Africa            |  246999000 |
-- | Western Africa            |  221672000 |
-- | Middle East               |  188380700 |
-- | Western Europe            |  183247600 |
-- | Northern Africa           |  173266000 |
-- | Southern Europe           |  144674200 |
-- | Central America           |  135221000 |
-- | Central Africa            |   95652000 |
-- | British Islands           |   63398500 |
-- | Southern Africa           |   46886000 |
-- | Caribbean                 |   38140000 |
-- | Nordic Countries          |   24166400 |
-- | Australia and New Zealand |   22753100 |
-- | Baltic Countries          |    7561900 |
-- | Melanesia                 |    6472000 |
-- | Polynesia                 |     633050 |
-- | Micronesia                |     543000 |
-- | Antarctica                |          0 |
-- | Micronesia/Caribbean      |          0 |
-- +---------------------------+------------+
SELECT Region, SUM(Population) AS Population
FROM country
GROUP BY Region
ORDER BY SUM(Population) DESC;

# What is the population for each continent?
-- +---------------+------------+
-- | Continent     | population |
-- +---------------+------------+
-- | Asia          | 3705025700 |
-- | Africa        |  784475000 |
-- | Europe        |  730074600 |
-- | North America |  482993000 |
-- | South America |  345780000 |
-- | Oceania       |   30401150 |
-- | Antarctica    |          0 |
-- +---------------+------------+
SELECT Continent, SUM(Population) AS Population
FROM country
GROUP BY Continent
ORDER BY SUM(Population) DESC;

# What is the average life expectancy globally?
-- +---------------------+
-- | avg(LifeExpectancy) |
-- +---------------------+
-- |            66.48604 |
-- +---------------------+
SELECT AVG(LifeExpectancy) AS Average_LifeExpectancy
FROM country;

# What is the average life expectancy for each region, each continent? Sort the results from shortest to longest
-- +---------------+-----------------+
-- | Continent     | life_expectancy |
-- +---------------+-----------------+
-- | Antarctica    |            NULL |
-- | Africa        |        52.57193 |
-- | Asia          |        67.44118 |
-- | Oceania       |        69.71500 |
-- | South America |        70.94615 |
-- | North America |        72.99189 |
-- | Europe        |        75.14773 |
-- +---------------+-----------------+
SELECT Continent, AVG(LifeExpectancy) AS Life_Expectancy
FROM country
GROUP BY Continent
ORDER BY AVG(LifeExpectancy);

-- +---------------------------+-----------------+
-- | Region                    | life_expectancy |
-- +---------------------------+-----------------+
-- | Antarctica                |            NULL |
-- | Micronesia/Caribbean      |            NULL |
-- | Southern Africa           |        44.82000 |
-- | Central Africa            |        50.31111 |
-- | Eastern Africa            |        50.81053 |
-- | Western Africa            |        52.74118 |
-- | Southern and Central Asia |        61.35000 |
-- | Southeast Asia            |        64.40000 |
-- | Northern Africa           |        65.38571 |
-- | Melanesia                 |        67.14000 |
-- | Micronesia                |        68.08571 |
-- | Baltic Countries          |        69.00000 |
-- | Eastern Europe            |        69.93000 |
-- | Middle East               |        70.56667 |
-- | Polynesia                 |        70.73333 |
-- | South America             |        70.94615 |
-- | Central America           |        71.02500 |
-- | Caribbean                 |        73.05833 |
-- | Eastern Asia              |        75.25000 |
-- | North America             |        75.82000 |
-- | Southern Europe           |        76.52857 |
-- | British Islands           |        77.25000 |
-- | Western Europe            |        78.25556 |
-- | Nordic Countries          |        78.33333 |
-- | Australia and New Zealand |        78.80000 |
-- +---------------------------+-----------------+
SELECT Region, AVG(LifeExpectancy) AS Life_Expectancy
FROM country
GROUP BY Region
ORDER BY Life_Expectancy;

# Bonus
-- Find all the countries whose local name is different from the official name
-- How many countries have a life expectancy less than x?
-- What state is city x located in?
-- What region of the world is city x located in?
-- What country (use the human readable name) city x located in?
-- What is the life expectancy in city x?