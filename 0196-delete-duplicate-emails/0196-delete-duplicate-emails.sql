/*
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your PL/SQL query statement below
 */
delete from person 
where id in (select id from (
    select id, email, row_number() over(partition by email order by id) row_num
    from person)
    where row_num>=2)
;