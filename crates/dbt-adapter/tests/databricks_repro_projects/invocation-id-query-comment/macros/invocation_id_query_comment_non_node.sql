{% macro invocation_id_query_comment_non_node() %}
  {% set first_result = run_query("select 1 as synthetic_value") %}
  {% set second_result = run_query("select 2 as synthetic_value") %}

  {% if first_result is none or second_result is none %}
    {{ exceptions.raise_compiler_error("Synthetic non-node query-comment probe failed") }}
  {% endif %}
{% endmacro %}
