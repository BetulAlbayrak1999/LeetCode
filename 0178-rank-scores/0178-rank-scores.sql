/* Write your PL/SQL query statement below */
select score, DENSE_RANK() over (order by score desc) rank
from scores;