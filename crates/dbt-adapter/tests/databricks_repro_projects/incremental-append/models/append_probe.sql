{{
  config(
    materialized="incremental",
    incremental_strategy="append"
  )
}}

{% if is_incremental() %}
select cast(3 as bigint) as sequence_number, 'rerun' as phase
union all
select cast(4 as bigint) as sequence_number, 'rerun' as phase
{% else %}
select cast(1 as bigint) as sequence_number, 'initial' as phase
union all
select cast(2 as bigint) as sequence_number, 'initial' as phase
{% endif %}
