{{ config(
    query_tags={
        "scope": "model_override",
        "marker": var("synthetic_query_tag_value", "model")
    }
) }}

select 1 as synthetic_id
