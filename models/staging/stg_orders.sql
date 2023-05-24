with orders as(
    SELECT *
    FROM {{source('northwind', 'orders')}}
)

select * from orders