select
    postal_code,
    country,
    time_init_utc,
    date_valid_std,
    doy_std,
    min_temperature_air_2m_f
    
from {{ source('srcdata', 'FORECAST_DAY') }}
