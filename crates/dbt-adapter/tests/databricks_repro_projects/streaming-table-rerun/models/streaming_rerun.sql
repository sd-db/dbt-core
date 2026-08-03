{{ config(materialized="streaming_table") }}

select * from stream {{ ref('streaming_source') }}
