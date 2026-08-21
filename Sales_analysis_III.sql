select s.product_id, p.product_name 
from product p join sales s
on p.product_id = s.product_id
group by s.product_id,p.product_name
having min(s.sale_date) >= '2019-01-01' 
and max(s.sale_date) <= '2019-03-31';

-- Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

-- Return the result table in any order.

-- The result format is in the following example.

-- Example 1:

-- Input: 
-- Product table:
-- +------------+--------------+------------+
-- | product_id | product_name | unit_price |
-- +------------+--------------+------------+
-- | 1          | S8           | 1000       |
-- | 2          | G4           | 800        |
-- | 3          | iPhone       | 1400       |
-- +------------+--------------+------------+
-- Sales table:
-- +-----------+------------+----------+------------+----------+-------+
-- | seller_id | product_id | buyer_id | sale_date  | quantity | price |
-- +-----------+------------+----------+------------+----------+-------+
-- | 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
-- | 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
-- | 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
-- | 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |
-- +-----------+------------+----------+------------+----------+-------+
-- Output: 
-- +-------------+--------------+
-- | product_id  | product_name |
-- +-------------+--------------+
-- | 1           | S8           |
-- +-------------+--------------+
-- Explanation: 
-- The product with id 1 was only sold in the spring of 2019.
-- The product with id 2 was sold in the spring of 2019 but was also sold after the spring of 2019.
-- The product with id 3 was sold after spring 2019.
-- We return only product 1 as it is the product that was only sold in the spring of 2019.
