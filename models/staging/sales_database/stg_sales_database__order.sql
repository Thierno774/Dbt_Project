SELECT  
  order_id, 
  user_name AS user_id, 
  order_status,
DATETIME(order_date, "Europe/Paris") AS order_created_date, 
DATETIME(order_approved_date, "Europe/Paris") AS order_approved_at, 
DATETIME(pickup_date, "Europe/Paris") AS pickup_up_date, 
DATETIME(delivered_date , "Europe/Paris") AS delivered_at, 
DATETIME(estimated_time_delivery, "Europe/Paris") AS estimated_time_delivery_at

FROM {{source('projet_file_rouge', 'order')}}
