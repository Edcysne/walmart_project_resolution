SELECT
    op.order_id,
    op.product_id,
    op.product_name,
    op.category,
    op.price
FROM
(SELECT *
FROM
(SELECT order_id, product_id_1 AS product_id
FROM missing_items_data
WHERE product_id_1 IS NOT NULL
UNION ALL
SELECT order_id, product_id_2 AS product_id
FROM missing_items_data
WHERE product_id_2 IS NOT NULL
UNION ALL
SELECT order_id, product_id_3 AS product_id
FROM missing_items_data
WHERE product_id_3 IS NOT NULL) o
JOIN
products_data p ON o.product_id = p.produc_id ) op
