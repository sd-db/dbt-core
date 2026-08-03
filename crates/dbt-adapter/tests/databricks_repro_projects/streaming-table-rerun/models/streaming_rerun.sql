{{
  config(
    materialized="streaming_table",
    tblproperties={"synthetic.streaming.rerun": "true"}
  )
}}

select * from stream {{ ref('streaming_source') }}
