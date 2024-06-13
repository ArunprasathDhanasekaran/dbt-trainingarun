with 

source as (

    select * from {{ source('sampdata', 'INCOME_BAND') }}

),

renamed as (

    select
        ib_income_band_sk,
        ib_lower_bound,
        ib_upper_bound

    from source

)

select * from renamed