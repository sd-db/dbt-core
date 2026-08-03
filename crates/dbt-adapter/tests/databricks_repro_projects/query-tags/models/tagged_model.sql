{{ config(
    materialized="table",
    query_tags={"feature": "fixture"}
) }}

select 1 as fixture_value
