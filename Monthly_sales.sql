SELECT database();
SHOW TABLES;

SELECT *
FROM online_sales_dataset;
SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS order_year,
    EXTRACT(MONTH FROM InvoiceDate) AS order_month,
    SUM(UnitPrice) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
    
FROM online_sales_dataset

WHERE 
	InvoiceDate >= '2020-01-01' AND InvoiceDate < '2023-01-01'
GROUP BY 
	order_year, order_month
ORDER BY 
	order_year, order_month;
    
COMMIT;
