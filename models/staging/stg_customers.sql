/*
==================================================================================================================================================================
                                                                  stg_customers staging model
==================================================================================================================================================================
Script Purpose:
    - Creates a cleaned customer staging layer from raw source data
    - Standardizes column names (id → customer_id, name → customer_name, etc.)
    - Implements source referencing for better lineage and maintainability
    - Provides foundation for customer-related mart models
==================================================================================================================================================================    
*/

select
    id as customer_id,
    name as customer_name,
    email as customer_email,
    country
from {{ source("raw_data", "customers") }} -- this way is more dynamic, so if we change the source, it will not affect it
