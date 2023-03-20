/* Write your PL/SQL query statement below */

select to_char(event_day, 'yyyy-mm-dd') as day, emp_id, sum(out_time - in_time) total_time
from Employees
group by  event_day, emp_id
