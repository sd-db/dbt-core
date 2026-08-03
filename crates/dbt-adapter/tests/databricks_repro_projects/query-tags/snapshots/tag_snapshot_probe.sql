{% snapshot tag_snapshot_probe %}
  {{
    config(
      target_schema=target.schema,
      unique_key="synthetic_id",
      strategy="check",
      check_cols=["synthetic_marker"],
      query_tags={"scope": "snapshot"}
    )
  }}

  select
    1 as synthetic_id,
    'stable' as synthetic_marker
{% endsnapshot %}
