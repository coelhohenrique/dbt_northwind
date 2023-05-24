with customers as(
    SELECT
    customer_id
    , company_name
    , address
    , city
    , country
    FROM {{source('northwind', 'customers')}}
)

select * from customers