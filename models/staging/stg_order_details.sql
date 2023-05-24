with order_details as(
    SELECT *
    FROM {{source('northwind', 'order_details')}}
)

select * from order_details