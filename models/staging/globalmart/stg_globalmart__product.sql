with 

source as (

    select * from {{ source('globalmart', 'product') }}

),

renamed as (

    select
        category,
        productid,
        productname,
        subcategory

    from source

)

select * from renamed
