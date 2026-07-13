WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'users') }}
)

SELECT
        id AS user_id,
        first_name,
        last_name,
        age,
        city,
        country,
        created_at

FROM source