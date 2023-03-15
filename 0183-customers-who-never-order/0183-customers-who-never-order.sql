/* Write your PL/SQL query statement below */

select name Customers 
from Customers
where id not in (
select Customers.id 
from Customers, Orders
where Customers.id = Orders.customerId); 