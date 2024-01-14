-- models/products_bought_by_customer.sql

WITH products_bought_counts AS (
    SELECT
        c.customer_id,
        c.customer_name,
        COUNT(p.product_id) AS products_bought_count
    FROM {{ ref('customer_data') }} c
    LEFT JOIN {{ ref('product') }} p ON c.customer_id = p.customer_id
    GROUP BY
        c.customer_id,
        c.customer_name
)

SELECT
    *
FROM products_bought_counts;
