SELECT 
margin -- from
FROM
{{ref("stg_raw__sales")}} as sales
JOIN
{{ref("stg_raw__product") }} as product
  USING (products_id)