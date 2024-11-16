SELECT 
    int_sales_margin.products_id,
    int_sales_margin.revenue,
    int_sales_margin.quantity,
    stg_raw__sales.date_date,
    (int_sales_margin.quantity * int_sales_margin.purchase_price) AS purchase_cost,
    (int_sales_margin.revenue - (int_sales_margin.quantity * int_sales_margin.purchase_price)) AS margin -- Fully qualified revenue column
FROM
    {{ref("int_sales_margin")}} AS int_sales_margin
JOIN 
    {{ref("stg_raw__sales")}} AS stg_raw__sales
USING (products_id)