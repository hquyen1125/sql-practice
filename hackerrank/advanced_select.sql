-- Type of Triangle
SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES 

-- The PADS
SELECT 
    CONCAT(Name, '(', SUBSTR(Occupation, 1, 1), ')')
FROM OCCUPATIONS
ORDER BY Name;
SELECT 
    CONCAT('There are a total of ',COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation ASC;

-- Binary Tree Nodes
SELECT N,
    CASE WHEN P IS NULL THEN 'Root'
    WHEN N NOT IN (SELECT DISTINCT(P) FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
    ELSE 'Inner'
    END 
FROM BST
ORDER BY N ASC

