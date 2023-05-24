with dim_customers as (
    SELECT 
        {{ dbt_utils.generate_surrogate_key(['customer_id', 'company_name']) }} as sk_customer
        , *
    FROM {{ref("stg_customers")}}
)

select * 
from dim_customers