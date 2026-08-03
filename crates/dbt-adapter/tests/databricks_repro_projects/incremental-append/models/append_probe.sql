{{ config(materialized="incremental", incremental_strategy="append") }}

{% if is_incremental() %}
select 4 as sequence_number, 'later' as phase
{% else %}
select 1 as sequence_number, 'first' as phase
{% endif %}
