/* Write your PL/SQL query statement below */

select NAME 
from SalesPerson A WHERE NOT EXISTS(
    SELECT 1 FROM Company b,Orders c
    where c.sales_id=a.sales_id
    and b.com_id=c.com_id
    and b.name='RED'
);