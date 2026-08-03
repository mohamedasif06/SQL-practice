select e.name as Employee 
from Employee e join Employee m # Joining the one table with itself as employee and manager
on e.managerid = m.id
where e.salary > m.salary;
