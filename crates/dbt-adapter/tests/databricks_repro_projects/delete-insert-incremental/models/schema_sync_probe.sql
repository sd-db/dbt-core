{{ config(
    materialized="incremental",
    incremental_strategy="delete+insert",
    unique_key="record_key",
    on_schema_change="sync_all_columns"
) }}

select
    cast(1 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id
{% if var("include_optional_column", false) %}
    , cast('synthetic' as string) as optional_attribute
{% endif %}
union all
select
    cast(2 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id
{% if var("include_optional_column", false) %}
    , cast('synthetic' as string) as optional_attribute
{% endif %}
union all
select
    cast(3 as bigint) as record_key,
    cast({{ var("synthetic_batch_id", 1) }} as bigint) as batch_id
{% if var("include_optional_column", false) %}
    , cast('synthetic' as string) as optional_attribute
{% endif %}
