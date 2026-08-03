{{ config(materialized="table") }}

select cast(1 as bigint) as numeric_value
