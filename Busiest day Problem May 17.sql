DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE
);

INSERT INTO orders (order_date)
VALUES
    ('2024-05-01'),
    ('2024-05-01'),
    ('2024-05-01'),
    ('2024-05-02'),
    ('2024-05-02'),
    ('2024-05-02'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06');
	
	
SELECT * FROM ORDERS


--You are given a orders table with columns order_id, order_date

--Identify the busiest day for orders along with the total number of orders placed on that day. 

-- INORDER TO EXTRACT THE DAY ALONE

SELECT EXTRACT(DAY FROM ORDER_DATE)AS ORDER_DAY,
       COUNT(ORDER_ID) AS TOTAL_COUNT
FROM ORDERS
GROUP BY 1
ORDER BY 2 DESC

--Limiting the count by the busiest day

SELECT 
    order_date,
    COUNT(1)  
FROM orders
GROUP by 1
ORDER BY 2 DESC
LIMIT 1
