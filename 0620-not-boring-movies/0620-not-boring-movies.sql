/* Write your PL/SQL query statement below */

SELECT 
id AS "id",
movie AS "movie",
description AS "description",
rating AS "rating"
FROM cinema 
WHERE MOD(id, 2) = 1 AND description != 'boring' 
ORDER BY rating DESC;