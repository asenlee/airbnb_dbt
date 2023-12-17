{{
  config(
    materialized = 'view',
    )
}}
WITH src_hosts as (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT
    host_id,
    CASE
        WHEN host_name is null THEN 'Anonymous'
        ELSE host_name
    END AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts