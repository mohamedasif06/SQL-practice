# Write your MySQL query statement below
-- Find the names of the customer that are either:

-- referred by any customer with id != 2.
-- not referred by any customer.
-- Return the result table in any order.

select name 
from customer
where referee_id is null or referee_id != 2;
