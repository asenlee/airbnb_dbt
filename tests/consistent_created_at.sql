SELECT * FROM {{ ref('dim_listings_cleansed') }} d
INNER JOIN {{ ref('fct_reviews') }} f
ON f.listing_id = d.listing_id
WHERE f.review_date <= d.created_at