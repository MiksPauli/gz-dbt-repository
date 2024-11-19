SELECT 
    products_id,
    revenue,
    quantity,
    date_date,
    (quantity * purchase_price) AS purchase_cost,
    (revenue - (quantity * purchase_price)) AS margin -- Fully qualified revenue column
FROM
    {{ref("int_sales_margin")}} AS int_sales_margin