WITH raw_reviews AS (
    SELECT * FROM {{ source('airbnb', 'reviews') }}
)
SELECT
    listing_id,
    date as review_date,
    comments as review_text,
    sentiment as review_sentiment
FROM
    raw_reviews
