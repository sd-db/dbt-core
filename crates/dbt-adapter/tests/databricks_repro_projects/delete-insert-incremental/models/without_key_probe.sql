{{ config(
    materialized="incremental",
    incremental_strategy="delete+insert"
) }}

select cast(1 as bigint) as record_key
