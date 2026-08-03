{{ config(query_tags={"scope": "data_test"}) }}

select synthetic_id
from {{ ref("tag_unit_probe") }}
where synthetic_id is null
