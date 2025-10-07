SELECT 
    t1.date,
    t1.order_id,
    t1.order_amount,
    t1.region,
    t1.items_delivered,
    t1.items_missing,
    t1.delivery_hour,
    t1.customer_name,
    t1.customer_age,
    t1.driver_name,
    t1.age as driver_age
FROM
(SELECT * FROM orders_data o
JOIN customers_data c ON c.customer_id = o.customer_id
JOIN drivers_data d ON d.driver_id = o.driver_id) t1