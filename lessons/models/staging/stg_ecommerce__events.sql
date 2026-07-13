WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'events') }}
)

SELECT
        id AS event_id,
        user_id,
        sequence_number,
        created_at,
        uri

FROM source