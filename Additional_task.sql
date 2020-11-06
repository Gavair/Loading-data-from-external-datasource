SELECT DISTINCT v.ID, v.Name
FROM (
    SELECT DISTINCT VendorID
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.Vendor AS v
ON f.VendorID = v.ID

SELECT DISTINCT r.ID, r.Name
FROM (
    SELECT DISTINCT RateCodeID
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.RateCode AS r
ON f.RateCodeID = r.ID

SELECT DISTINCT p.ID, p.Name
FROM (
    SELECT DISTINCT Payment_type
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.Payment_type AS p
ON f.Payment_type = p.ID