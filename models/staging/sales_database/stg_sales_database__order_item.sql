SELECT   CONCAT(order_id, '_', product_id) AS order_item_id, 
    order_id, 
    product_id, 
    seller_id, 
    DATETIME (pickup_limit_date, "Europe/Paris") AS pickup_limit_at, 
    price AS unit_price, 
    shipping_cost, 
    quantity AS item_quantity, 
    {{ calculate_total_order_item_amount ('price', 'quantity') }} AS total_order_item_amount
FROM {{source( 'projet_file_rouge', 'order_item')}} 

