WITH RECURSIVE pattern AS ( SELECT 1 AS row_num UNION ALL SELECT row_num + 1 FROM pattern WHERE row_num < 20 ) 
  SELECT REPEAT('* ', row_num) AS stars FROM pattern;
