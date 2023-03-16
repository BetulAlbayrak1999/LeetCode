/* Write your PL/SQL query statement below */

select distinct id from(
select author_id id, case when author_id = viewer_id then 1 else 0 end control
from views)
where control = 1
order by 1 asc