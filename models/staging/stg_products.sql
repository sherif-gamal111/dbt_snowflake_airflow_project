/*
==================================================================================================================================================================
                                                                  stg_products staging model
==================================================================================================================================================================
Script Purpose:
    - Creates a cleaned products staging layer from raw source data
    - Standardizes column names (id → product_id, name → product_name)
    - Selects core product attributes for downstream analytics
    - Uses source referencing for maintainability and data lineage
    - Provides foundation for product dimension and sales analysis
==================================================================================================================================================================    
*/


select 
    id as product_id,
    name as product_name,
    category,
    price
from {{ source("raw_data", "products") }}
