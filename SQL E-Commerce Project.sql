SELECT table_name
FROM information_schema.tables
WHERE table_schema='public';

SELECT 
	pct.product_category_name_english AS category,
    SUM(oi.price) AS total_sales,
    COUNT(oi.order_id) AS total_items_sold
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
JOIN product_category_name_translation pct
    ON p.product_category_name = pct.product_category_name
GROUP BY pct.product_category_name_english
ORDER BY total_sales DESC;


SELECT 
    s.seller_id,
    s.seller_city,
    s.seller_state,
    COUNT(oi.order_id) AS total_products_sold,
    SUM(oi.price) AS total_sales,
	AVG(ord.review_score) AS avg_review_score
FROM olist_sellers_dataset s
JOIN olist_order_items_dataset oi
    ON s.seller_id = oi.seller_id
JOIN olist_order_reviews_dataset ord
    ON oi.order_id = ord.order_id
GROUP BY s.seller_id, s.seller_city, s.seller_state
ORDER BY total_sales DESC;

SELECT 
    g.geolocation_city AS city,
    g.geolocation_state AS state,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price) AS total_sales
FROM olist_orders_dataset o
JOIN olist_customers_dataset c
    ON o.customer_id = c.customer_id
JOIN olist_geolocation_dataset g
    ON c.customer_zip_code_prefix = g.geolocation_zip_code_prefix
JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id
GROUP BY g.geolocation_city, g.geolocation_state
ORDER BY total_sales DESC;

SELECT 
    pct.product_category_name_english AS category,
    AVG(ord.review_score) AS avg_review_score,
    COUNT(ord.review_id) AS total_reviews
FROM olist_order_reviews_dataset ord
JOIN olist_order_items_dataset oi
    ON ord.order_id = oi.order_id
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
JOIN product_category_name_translation pct
    ON p.product_category_name = pct.product_category_name
GROUP BY pct.product_category_name_english
ORDER BY avg_review_score DESC;

SELECT 
    op.payment_type,
    COUNT(op.order_id) AS total_transactions,
    SUM(op.payment_value) AS total_payment_value
FROM olist_order_payments_dataset op
GROUP BY op.payment_type
ORDER BY total_payment_value DESC;
