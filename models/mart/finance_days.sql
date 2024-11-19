{{ config(materialized= 'table')}}
SELECT 
int_sales_margin.date_date,
COUNT(orders_id) as total_n_transaction,
ROUND(SUM (revenue),2) as total_revenue, 
ROUND(AVG (revenue),2) as average_basket, 
ROUND(SUM (operational_margin),2) as total_operational_margin,
ROUND(SUM (purchase_cost),2) as total_purchase_cost,
SUM (shipping_fee) as total_shipping_fees,
SUM (logcost) as total_log_costs, 
SUM (quantity) as total_qty_sold_products
FROM
{{ref("int_sales_margin")}} 
JOIN
{{ref("int_orders_operational") }} 
USING (orders_id)
GROUP BY date_date
ORDER BY date_date DESC