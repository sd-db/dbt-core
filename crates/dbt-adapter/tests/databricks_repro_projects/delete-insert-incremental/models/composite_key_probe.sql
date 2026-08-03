{{ config(
    materialized="incremental",
    incremental_strategy="delete+insert",
    unique_key=["tenant_key", "record_key"]
) }}

select
    cast(100 as bigint) as tenant_key,
    cast(1 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id,
    cast('active' as string) as status
union all
select
    cast(100 as bigint) as tenant_key,
    cast(2 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id,
    cast('active' as string) as status
union all
select
    cast(200 as bigint) as tenant_key,
    cast(1 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id,
    cast('active' as string) as status
union all
select
    cast(200 as bigint) as tenant_key,
    cast(2 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id,
    cast('active' as string) as status
