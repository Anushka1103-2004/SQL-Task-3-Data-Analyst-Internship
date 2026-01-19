-- 1. View all records
SELECT * FROM superstore_sales;

-- 2. Total number of records
SELECT COUNT(*) AS total_orders FROM superstore_sales;

-- 3. Filter: Only Technology category
SELECT *
FROM superstore_sales
WHERE category = 'Technology';

-- 4. Sort: Top 10 highest sales
SELECT *
FROM superstore_sales
ORDER BY sales DESC
LIMIT 10;

-- 5. Total Sales and Profit by Category
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY category;

-- 6. Average Profit by Region
SELECT
    region,
    AVG(profit) AS avg_profit
FROM superstore_sales
GROUP BY region;

-- 7. Categories with Sales > 100000 (HAVING)
SELECT
    category,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- 8. Monthly Sales Report (BETWEEN)
SELECT
    order_date,
    sales
FROM superstore_sales
WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';

-- 9. Customer name search using LIKE
SELECT *
FROM superstore_sales
WHERE customer_name LIKE '%Singh%';

-- 10. Top 5 Customers by Total Spend (INTERVIEW QUESTION)
SELECT
    customer_name,
    SUM(sales) AS total_spent
FROM superstore_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
