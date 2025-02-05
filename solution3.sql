/*
Enter your query here.
*/WITH RECURSIVE Numbers AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 1 FROM Numbers WHERE num < 1000
)
SELECT GROUP_CONCAT(num SEPARATOR '&') 
FROM Numbers 
WHERE NOT EXISTS (
    SELECT 1 
    FROM Numbers AS n 
    WHERE n.num < Numbers.num 
    AND Numbers.num % n.num = 0
    AND n.num > 1
);
