WITH order_item_grouped_by_order AS (
    SELECT order_id, 
    SUM(total_order_item_amount) AS total_order_amount,
    SUM(item_quantity) AS total_items, 
    COUNT(DISTINCT product_id) AS total_distinct_items

    FROM {{ref ('stg_sales_database__order_item')}} 
  
  GROUP BY order_id
 -- Commentaire 
), feedback_grouped_by_order AS (
  SELECT order_id, 
      AVG(feedback_score) AS average_feedback_score, 

  FROM {{ref('stg_sales_database__feedback')}}
  GROUP BY order_id

)
SELECT 
  O.order_id, 
  O.user_id, 
  O.order_created_date, 
  O.order_approved_at, 
  u.user_city, 
  f.average_feedback_score, 
  oi.total_order_amount, 
  oi.total_items, 
  oi.total_distinct_items
FROM {{ref('stg_sales_database__order')}}  AS O 
LEFT JOIN order_item_grouped_by_order AS oi ON O.order_id = oi.order_id
LEFT JOIN feedback_grouped_by_order AS f ON f.order_id = o.order_id 
LEFT JOIN  {{ref('stg_sales_database__user')}} AS u ON u.user_id = O.user_id