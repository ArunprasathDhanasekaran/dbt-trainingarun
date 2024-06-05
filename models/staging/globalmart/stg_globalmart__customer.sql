with 

source as (

    select * from {{ source('globalmart', 'customer') }}

),

renamed as (

    select
        customer_id,
        customername,
        segment,
        country,
        state

    from source

)

select * from renamed
