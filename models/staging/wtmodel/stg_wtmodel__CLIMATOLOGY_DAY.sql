
{{
    config(
        materialized='table'
    )
}}

with 

source as (

    select * from {{ source('wtmodel', 'CLIMATOLOGY_DAY') }}

),

renamed as (

    select
        postal_code,
        country,
        doy_std,
        avg_of__daily_min_temperature_air_f,
        std_of__daily_min_temperature_air_f,
        avg_of__daily_avg_temperature_air_f,
        std_of__daily_avg_temperature_air_f,
        avg_of__daily_max_temperature_air_f,
        std_of__daily_max_temperature_air_f,
        avg_of__daily_min_temperature_wetbulb_f,
        std_of__daily_min_temperature_wetbulb_f,
        avg_of__daily_avg_temperature_wetbulb_f,
        std_of__daily_avg_temperature_wetbulb_f,
        avg_of__daily_max_temperature_wetbulb_f,
        std_of__daily_max_temperature_wetbulb_f,
        avg_of__daily_min_temperature_dewpoint_f,
        std_of__daily_min_temperature_dewpoint_f,
        avg_of__daily_avg_temperature_dewpoint_f,
        std_of__daily_avg_temperature_dewpoint_f,
        avg_of__daily_max_temperature_dewpoint_f,
        std_of__daily_max_temperature_dewpoint_f,
        avg_of__daily_min_temperature_feelslike_f,
        std_of__daily_min_temperature_feelslike_f,
        avg_of__daily_avg_temperature_feelslike_f,
        std_of__daily_avg_temperature_feelslike_f,
        avg_of__daily_max_temperature_feelslike_f,
        std_of__daily_max_temperature_feelslike_f,
        avg_of__daily_min_humidity_relative_pct,
        std_of__daily_min_humidity_relative_pct,
        avg_of__daily_avg_humidity_relative_pct,
        std_of__daily_avg_humidity_relative_pct,
        avg_of__daily_max_humidity_relative_pct,
        std_of__daily_max_humidity_relative_pct,
        avg_of__daily_min_humidity_specific_gpkg,
        std_of__daily_min_humidity_specific_gpkg,
        avg_of__daily_avg_humidity_specific_gpkg,
        std_of__daily_avg_humidity_specific_gpkg,
        avg_of__daily_max_humidity_specific_gpkg,
        std_of__daily_max_humidity_specific_gpkg,
        avg_of__daily_min_pressure_surface_mb,
        std_of__daily_min_pressure_surface_mb,
        avg_of__daily_avg_pressure_surface_mb,
        std_of__daily_avg_pressure_surface_mb,
        avg_of__daily_max_pressure_surface_mb,
        std_of__daily_max_pressure_surface_mb,
        avg_of__daily_min_pressure_mean_sea_level_mb,
        std_of__daily_min_pressure_mean_sea_level_mb,
        avg_of__daily_avg_pressure_mean_sea_level_mb,
        std_of__daily_avg_pressure_mean_sea_level_mb,
        avg_of__daily_max_pressure_mean_sea_level_mb,
        std_of__daily_max_pressure_mean_sea_level_mb,
        avg_of__daily_min_wind_speed_10m_mph,
        std_of__daily_min_wind_speed_10m_mph,
        avg_of__daily_avg_wind_speed_10m_mph,
        std_of__daily_avg_wind_speed_10m_mph,
        avg_of__daily_max_wind_speed_10m_mph,
        std_of__daily_max_wind_speed_10m_mph,
        avg_vec_of__daily_avg_vec_wind_direction_10m_deg,
        avg_vec_of__daily_avg_vec_wind_direction_80m_deg,
        avg_vec_of__daily_avg_vec_wind_direction_100m_deg,
        avg_of__pos_daily_tot_precipitation_in,
        frq_of__pos_daily_tot_precipitation_in_pct,
        std_of__pos_daily_tot_precipitation_in,
        frq_of__daily_tot_precipitation_zero_in_pct,
        frq_of__daily_tot_precipitation_001_010_in_pct,
        frq_of__daily_tot_precipitation_010_025_in_pct,
        frq_of__daily_tot_precipitation_025_050_in_pct,
        frq_of__daily_tot_precipitation_050_100_in_pct,
        frq_of__daily_tot_precipitation_100_250_in_pct,
        frq_of__daily_tot_precipitation_250_500_in_pct,
        frq_of__daily_tot_precipitation_500_gtr_in_pct,
        avg_of__pos_daily_tot_snowfall_in,
        frq_of__pos_daily_tot_snowfall_in_pct,
        std_of__pos_daily_tot_snowfall_in,
        pct_frq_of__daily_tot_snowfall_zero_in_pct,
        pct_frq_of__daily_tot_snowfall_001_010_in_pct,
        pct_frq_of__daily_tot_snowfall_010_025_in_pct,
        pct_frq_of__daily_tot_snowfall_025_050_in_pct,
        pct_frq_of__daily_tot_snowfall_050_100_in_pct,
        pct_frq_of__daily_tot_snowfall_100_150_in_pct,
        pct_frq_of__daily_tot_snowfall_150_250_in_pct,
        pct_frq_of__daily_tot_snowfall_250_gtr_in_pct,
        avg_of__pos_daily_snowdepth_in,
        std_of__pos_daily_snowdepth_in,
        avg_of__daily_min_cloud_cover_tot_pct,
        std_of__daily_min_cloud_cover_tot_pct,
        avg_of__daily_avg_cloud_cover_tot_pct,
        std_of__daily_avg_cloud_cover_tot_pct,
        avg_of__daily_max_cloud_cover_tot_pct,
        std_of__daily_max_cloud_cover_tot_pct,
        avg_of__daily_min_radiation_solar_total_wpm2,
        std_of__daily_min_radiation_solar_total_wpm2,
        avg_of__daily_avg_radiation_solar_total_wpm2,
        std_of__daily_avg_radiation_solar_total_wpm2,
        avg_of__daily_max_radiation_solar_total_wpm2,
        std_of__daily_max_radiation_solar_total_wpm2,
        avg_of__daily_tot_radiation_solar_total_wpm2,
        std_of__daily_tot_radiation_solar_total_wpm2

    from source

)

select * from renamed
