/* Write your PL/SQL query statement below */

select user_id "user_id", initcap(name) "name"
from users
order by user_id;