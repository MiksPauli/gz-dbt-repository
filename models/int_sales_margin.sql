SELECT 
quantity,
purchase_price
FROM
{{ref("sales")}} as sales
JOIN
{{ref("product") }} as product
  ON sales.products_id = product.products_id