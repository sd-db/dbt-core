{% macro prepare_synthetic_empty_schema() %}
  {% set create_schema_statement %}
    create schema if not exists {{ target.database }}.{{ target.schema }}_empty_catalog
  {% endset %}

  {% do run_query(create_schema_statement) %}
{% endmacro %}
