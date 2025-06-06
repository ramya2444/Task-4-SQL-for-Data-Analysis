
-- QUERY 1
SELECT c.customer_name, o.purchase_amount, o.purchase_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_country = 'India' AND o.purchase_amount > 100
ORDER BY o.purchase_date DESC;

-- QUERY 2
SELECT p.product_category, SUM(o.purchase_amount) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_category
ORDER BY total_revenue DESC;

-- QUERY 3
SELECT c.customer_name, o.order_id, o.purchase_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- QUERY 4
SELECT c.customer_name, o.order_id, o.purchase_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- QUERY 5
SELECT customer_id, customer_name, total_spent FROM (
  SELECT c.customer_id, c.customer_name, SUM(o.purchase_amount) AS total_spent
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.customer_id, c.customer_name
) AS spending
WHERE total_spent > (
  SELECT AVG(purchase_amount) FROM orders
);

-- QUERY 6
SELECT customer_id, AVG(purchase_amount) AS avg_purchase
FROM orders
GROUP BY customer_id;

-- QUERY 7
DROP VIEW IF EXISTS customer_spending_summary;

CREATE VIEW customer_spending_summary AS
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders,
       SUM(o.purchase_amount) AS total_spent, AVG(o.purchase_amount) AS avg_order_value
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

SELECT * FROM customer_spending_summary WHERE total_spent > 1000;

-- QUERY 8
SELECT c.customer_name, COALESCE(SUM(o.purchase_amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
