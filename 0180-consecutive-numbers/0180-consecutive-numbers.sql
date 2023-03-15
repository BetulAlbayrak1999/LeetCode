/* Write your PL/SQL query statement below */

with cte as(
    select
        id, num,
        lag(num,1) over(order by id asc) as prev_num,
        lead(num,1) over(order by id asc) as nxt_num
    from Logs
)

select distinct num as ConsecutiveNums from cte 
where num = prev_num and num = nxt_num