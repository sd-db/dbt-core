{{ config(
    materialized="incremental",
    incremental_strategy="delete+insert",
    unique_key="record_id"
) }}

with lifecycle_rows as (
    select
        record_key,
        batch_id,
        status
    from {{ ref("composite_key_probe") }}
    where tenant_key = cast(100 as bigint)
)

select
    record_key as record_id,
    batch_id as batch_value,
    status
from lifecycle_rows
