SELECT 
date_date,
products_id,
orders_id,
revenue,
quantity,
purchase_price,
(quantity * purchase_price) as purchase_cost,
ROUND(revenue - (quantity * purchase_price),2) as margin
FROM
{{ref("stg_raw__sales")}} as sales
JOIN
{{ref("stg_raw__product") }} as product
  USING (products_id)
  ORDER BY margin DESC