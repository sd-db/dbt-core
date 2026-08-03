{{ config(
    materialized='materialized_view',
    on_configuration_change='apply',
    databricks_tags={'example_tag': var('materialized_view_tag', 'example')}
) }}

select
    1 as example_id,
    'example' as example_value
