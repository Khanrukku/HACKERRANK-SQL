WITH RECURSIVE pattern AS ( SELECT 20 AS row_num UNION ALL SELECT row_num - 1 FROM pattern WHERE row_num > 0 ) 
SELECT REPEAT('* ', row_num) AS stars FROM pattern;
