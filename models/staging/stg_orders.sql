/*
==================================================================================================================================================================
                                                                  stg_orders staging model
==================================================================================================================================================================
Script Purpose:
    - Creates a cleaned orders staging layer from raw source data
    - Standardizes column names (id → order_id) for consistency
    - Selects core order attributes for downstream analytics
    - Uses source referencing for maintainability and data lineage
    - Provides foundation for order-focused mart models and fact tables
==================================================================================================================================================================    
*/


select
    id as order_id,
    customer_id,
    order_date,
    total_amount,
    status
from {{ source("raw_data", "orders") }}
