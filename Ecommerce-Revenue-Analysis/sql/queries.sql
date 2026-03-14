/*
   ECOMMERCE SALES ANALYSIS
   Dataset Columns:
   InvoiceNo
   StockCode
   Description
   Quantity
   InvoiceDate
   UnitPrice
   CustomerID
   Country */


/* Total revenue */
SELECT
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales;


/* Total orders */
SELECT
    COUNT(DISTINCT InvoiceNo) AS orders
FROM ecommerce_sales;


/* Unique customers */
SELECT
    COUNT(DISTINCT CustomerID) AS customers
FROM ecommerce_sales;


/* Top 10 products by revenue */
SELECT
    Description,
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;


/* Top 10 products by quantity sold */
SELECT
    Description,
    SUM(Quantity) AS quantity
FROM ecommerce_sales
GROUP BY Description
ORDER BY quantity DESC
LIMIT 10;


/* Revenue by country */
SELECT
    Country,
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY revenue DESC;


/* Top 10 customers by revenue */
SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;


/* Average order value */
SELECT
    AVG(order_value) AS avg_order_value
FROM (
    SELECT
        InvoiceNo,
        SUM(Quantity * UnitPrice) AS order_value
    FROM ecommerce_sales
    GROUP BY InvoiceNo
) orders;


/* Monthly revenue trend */
SELECT
    DATE_TRUNC('month', InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales
GROUP BY month
ORDER BY month;


/* Returned orders */
SELECT *
FROM ecommerce_sales
WHERE Quantity < 0;


/* Countries by number of orders */
SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS orders
FROM ecommerce_sales
GROUP BY Country
ORDER BY orders DESC;
