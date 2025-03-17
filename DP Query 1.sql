-- Total no of orders placed

SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;