/*
==================================================================================================================================================================
                                                                  stg_order_items with revenue calculation
==================================================================================================================================================================
Script Purpose:
    - Creates a cleaned order items staging layer from the raw source
    - Standardizes column names and adds order_item_id
    - Implements business logic: calculates total_price (quantity * unit_price)
    - Uses source referencing for maintainability and lineage
    - Enables order revenue aggregation in mart models
==================================================================================================================================================================    
*/

select 
    id as order_item_id,
    order_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as total_price
from {{ source("raw_data", "order_items") }}
