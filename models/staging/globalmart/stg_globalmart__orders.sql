with 

source as (

    select * from {{ source('globalmart', 'orders') }}

),

renamed as (

    select
        order_id,
        order_date,
        ship_date,
        ship_mode,
        customer_id,
        product_id,
        order_cost_price,
        order_selling_price

    from source

)

select * from renamed
