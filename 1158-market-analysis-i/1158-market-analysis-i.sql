/* Write your PL/SQL query statement below */


select u.user_id as buyer_id, to_char(u.join_date, 'yyyy-mm-dd') as join_date, count(o.buyer_id) as orders_in_2019
from Users u
left join Orders o
on u.user_id = o.buyer_id
and to_char(o.order_date, 'yyyy') = '2019'
group by u.user_id, u.join_date;


