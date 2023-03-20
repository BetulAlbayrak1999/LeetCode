/* Write your PL/SQL query statement below */

select user_id, max(time_stamp) last_stamp
from Logins
where to_char(time_stamp,'yyyy') ='2020'
group by user_id