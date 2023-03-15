/* Write your PL/SQL query statement below */
select distinct Email  from (
select email, row_number()over(partition by email order by id) row_num
from person )
where row_num >=2;