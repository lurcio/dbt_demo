WITH customers AS (

  SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    country,
    'names_countries_1' AS source_table_name
  FROM
    {{ ref('stg_names_countries_1') }}

  UNION ALL

  SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    country,
    'names_countries_2' AS source_table_name
  FROM
    {{ ref('stg_names_countries_2') }}

  UNION ALL

  SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    country,
    'names_countries_3' AS source_table_name
  FROM
    {{ ref('stg_names_countries_3') }}

)

SELECT
  *
FROM
  customers 
