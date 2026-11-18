SELECT 
   order_id, 
   SUM(total_order_item_amount) AS total_amount 
FROM {{ref('stg_sales_database__order_item')}}
GROUP BY 1 
HAVING total_amount < 0 