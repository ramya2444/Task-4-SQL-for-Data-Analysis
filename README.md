
# 📊 Task 3: SQL for Data Analysis – Ecommerce Dataset

## 🎯 Objective
Analyze an Ecommerce dataset using SQL queries to extract insights and demonstrate key SQL skills including:
- Data filtering
- Aggregation
- JOINs
- Subqueries
- Views
- Handling NULL values

---

## 📂 Repository Contents

| File Name                | Description                                         |
|-------------------------|-----------------------------------------------------|
| `data_setup.sql`        | SQL script to create and populate the database      |
| `data_queries.sql`      | SQL script with all analytical queries              |
| `outputs of data.sql`   | Expected output from each query (as SQL comments)|
| `README.md`             | This file – project explanation and structure       |

---

## 🧾 Dataset Schema

**1. customers**
- `customer_id` (PK)
- `customer_name`
- `customer_email`
- `customer_country`

**2. products**
- `product_id` (PK)
- `product_name`
- `product_category`
- `price`

**3. orders**
- `order_id` (PK)
- `customer_id` (FK)
- `product_id` (FK)
- `purchase_amount`
- `purchase_date`

---

## ✅ How to Use

1. Run `data_setup.sql` in MySQL or [DB Fiddle](https://www.db-fiddle.com/) to build the database.
2. Use `data_queries.sql` to run queries on the database.
3. Refer to `outputs of data.sql` to validate your results.
---

## 🧠 Interview Questions & Answers

**Q1: What’s the difference between `WHERE` and `HAVING`?**  
A: `WHERE` filters rows before aggregation; `HAVING` filters after aggregation.

**Q2: What are the different types of JOINs?**  
A:
- `INNER JOIN`: returns only matching rows from both tables
- `LEFT JOIN`: returns all rows from the left table and matched rows from the right
- `RIGHT JOIN`: all rows from the right table and matched rows from the left
- `FULL OUTER JOIN`: all rows from both tables (not supported in all DBMS)

**Q3: How do you calculate average revenue per user in SQL?**  
```sql
SELECT AVG(total_spent) FROM (
  SELECT customer_id, SUM(purchase_amount) AS total_spent
  FROM orders
  GROUP BY customer_id
) AS user_spending;
```

**Q4: What are subqueries?**  
A: Subqueries are queries nested inside another query. They can return scalar, row, or table values and are commonly used in SELECT, FROM, and WHERE clauses.

**Q5: How do you optimize a SQL query?**  
A:
- Use indexes on frequently filtered/joined columns
- Avoid SELECT *
- Use WHERE to limit rows early
- Check the execution plan using `EXPLAIN`

**Q6: What is a view in SQL?**  
A: A view is a virtual table created using a SELECT query. It simplifies complex queries and helps in abstraction.

**Q7: How would you handle NULL values in SQL?**  
A:
- Use `IS NULL` or `IS NOT NULL` for checking
- Use `COALESCE()` to provide default values
- Use aggregation functions that skip NULLs (e.g., SUM, AVG)
---

## 🛠 Tools Used
- SQL (MySQL syntax)
- DB Fiddle (for testing and screenshots)
- GitHub (for submission)

---

## 👤 Author

**Name:** Makkina Ramyapriya
**GitHub:** [https://github.com/ramya2444](https://github.com/yourusername)  
**Email:** ramyapriyamakkina@gmail.com
