{{
  config(
   alias =  "order_daily_report"
  )
}}



SELECT 
  DATE(order_created_date) AS order_date, 
  user_city AS state , 
  COALESCE(COUNT(DISTINCT order_id),0) AS total_orders,
    COALESCE(AVG(total_items),0) AS average_items_per_orders,
  COALESCE(AVG(average_feedback_score),0) AS average_feedback_score,
  COALESCE(AVG(total_order_amount),0) AS average_amount_spent_per_order
FROM {{ref('int_sales_database__order')}} 
GROUP BY order_date, state
