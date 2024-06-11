with 

source as (

    select * from {{ source('TPCDS_SF100TCL', 'CATALOG_PAGE') }}

),

renamed as (

    select

    from source

)

select * from renamed
