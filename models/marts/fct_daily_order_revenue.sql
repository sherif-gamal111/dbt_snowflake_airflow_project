/*
==================================================================================================================================================================
                                                                  Daily_Order_Revenue 
==================================================================================================================================================================
Script Purpose:
    - Creates a core fact table for daily order revenue analysis
    - Aggregates total price from order items at the order level
    - Supports revenue reporting and customer order analysis
    - References stg_orders and stg_order_items models
==================================================================================================================================================================    
*/

  
select 
    o.order_id,
    order_date,
    sum(total_price) as total_price
from {{ ref("stg_orders") }} o
left join {{ ref("stg_order_items") }} oi
on o.order_id = oi.order_id
group by o.order_id, order_date
