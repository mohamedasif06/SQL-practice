DELETE e1                  -- Delete rows from alias e1
FROM Employees e1
JOIN Employees e2          -- Compare the table with itself
ON e1.name = e2.name       -- Match rows having the same name
AND e1.id > e2.id;         -- Delete the row with the larger id (keep the smallest id)

--Self Join compares each row with every other row having the same value. 
--e1.id > e2.id identifies the duplicate (larger id), and DELETE e1 removes it while keeping the first occurrence.
