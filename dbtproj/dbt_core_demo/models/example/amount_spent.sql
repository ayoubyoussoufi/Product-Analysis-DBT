-- models/total_amount_spent_by_customer.sql

WITH total_amount_spent AS (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(p.price) AS total_amount_spent
    FROM {{ ref('customer_data') }} c
    LEFT JOIN {{ ref('product') }} p ON c.customer_id = p.customer_id
    GROUP BY
        c.customer_id,
        c.customer_name
)

SELECT
    *
FROM total_amount_spent;
