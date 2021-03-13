-- For hash-distribution schema, I choosed column PULocationID, because it has many unique values and does not contain NULL
-- Columns that contain the date I did not choose, because in this case, parallel calculations with the date filter will be very inefficient (and they will be very frequent).

CREATE TABLE semenchenko_schema.fact_tripdata WITH (
    DISTRIBUTION = HASH (PULocationID)
)
AS
    SELECT * FROM semenchenko_schema.external_table

SELECT COUNT(*) FROM semenchenko_schema.fact_tripdata
