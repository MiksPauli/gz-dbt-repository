SELECT 
int_sales_margin.orders_id,
date_date,
ROUND (margin + shipping_fee - logcost - ship_cost, 2) AS operational_margin,
shipping_fee,
logcost,
ship_cost
FROM
{{ref("int_sales_margin")}} 
JOIN
{{ref("stg_raw__ship") }} as product
   USING (orders_id)
   ORDER BY operational_margin DESC