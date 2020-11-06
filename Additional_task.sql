-- Додає значення рядків, які є в таблиці, але немає в pdf файлі

INSERT INTO semenchenko_schema.Vendor
SELECT f.VendorID AS ID, v.Name
FROM (
    SELECT DISTINCT VendorID
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.Vendor AS v
ON f.VendorID = v.ID
WHERE v.Name IS NULL

SELECT * FROM semenchenko_schema.Vendor

INSERT INTO semenchenko_schema.RateCode
SELECT f.RateCodeID AS ID, r.Name
FROM (
    SELECT DISTINCT RateCodeID
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.RateCode AS r
ON f.RateCodeID = r.ID
WHERE r.Name IS NULL

SELECT * FROM semenchenko_schema.RateCode

INSERT INTO semenchenko_schema.Payment_type
SELECT f.Payment_type AS ID, p.Name
FROM (
    SELECT DISTINCT Payment_type
    FROM semenchenko_schema.fact_tripdata
) AS f
LEFT JOIN semenchenko_schema.Payment_type AS p
ON f.Payment_type = p.ID
WHERE p.Name IS NULL

SELECT * FROM semenchenko_schema.Payment_type
