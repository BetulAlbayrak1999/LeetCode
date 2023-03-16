/* Write your PL/SQL query statement below */

select p.product_id, p.product_name 
from Product p INNER JOIN Sales s 
on p.product_id = s.product_id
group by p.product_id, p.product_name
having MIN(s.sale_date) >= to_date('2019-01-01','YYYY-MM-DD') and 
MAX(s.sale_date) <= to_date('2019-03-31','YYYY-MM-DD')