{{ config(
    materialized="incremental",
    incremental_strategy="delete+insert",
    unique_key="record_id"
) }}

select
    1 as record_id,
    {{ var("batch_value", 1) }} as batch_value
