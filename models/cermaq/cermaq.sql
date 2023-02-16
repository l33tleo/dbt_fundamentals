


{{ config(materialized='table') }}

with source_data as (

select * from DEV_LEO.public.devices
)

select *
from source_data
