select c.name as Customers
from Customers c left join Orders o
on c.id = o.customerid
where o.id is NULL;
