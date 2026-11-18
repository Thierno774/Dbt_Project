SELECT user_name AS user_id, 
customer_zip_code AS use_customer_zip_code, 
customer_city AS user_city, 
customer_state AS user_state 
FROM {{source('projet_file_rouge', 'user')}}
