SELECT seller_id, 
 seller_zip_code, 
 seller_city, 
 seller_state
FROM {{source('projet_file_rouge', 'seller')}}


