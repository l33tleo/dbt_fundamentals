
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    /*select 1 as id
    union all
    select null as id
*/
select * from snowflake_sample_data.tpch_sf10.customer c join snowflake_sample_data.tpch_sf10.orders o on c.
c_custkey = o.o_custkey limit 10
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
