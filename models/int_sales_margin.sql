SELECT 
products_id,
revenue,
quantity,
purchase_price,
(quantity * purchase_price) as purchase_cost,
(revenue - (quantity * purchase_price)) as margin
FROM
{{ref("stg_raw__sales")}} as sales
JOIN
{{ref("stg_raw__product") }} as product
  USING (products_id)
  ORDER BY margin ASC