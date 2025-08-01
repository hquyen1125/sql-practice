-- Population Census
SELECT SUM(ci.POPULATION) 
FROM CITY ci
LEFT JOIN COUNTRY co
ON ci.CountryCode = co.Code 
WHERE co.CONTINENT LIKE 'Asia'

-- African Cities
SELECT ci.NAME
FROM CITY ci
LEFT JOIN COUNTRY co
ON ci.CountryCode = co.Code
WHERE co.CONTINENT LIKE 'Africa'

-- Average Population of Each Continent
SELECT co.CONTINENT, FLOOR(AVG(ci.POPULATION))
FROM COUNTRY co
JOIN CITY ci -- For countries with no matching city, ci.POPULATION will be NULL
ON ci.CountryCode = co.Code
GROUP BY co.CONTINENT

-- The Report
SELECT 
    CASE WHEN s.Marks > 70 THEN s.Name ELSE 'NULL'
    END,
    g.Grade, s.Marks
FROM Students s
LEFT JOIN Grades g
ON s.Marks >= g.Min_Mark AND s.Marks <= g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC
