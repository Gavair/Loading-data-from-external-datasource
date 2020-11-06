-- Для hash-distribution схеми, я обрав колонку PULocationID, оскільки вона має багіто унікальних значень та не містить NULL
-- Стовпці, які містять дату я не обирав, оскільки в такому випадку паралельні розрахунки з фільтром по даті будуть дуже неефективними (а вони будуть дуже частими).

CREATE TABLE semenchenko_schema.fact_tripdata WITH (
    DISTRIBUTION = HASH (PULocationID)
)
AS
    SELECT * FROM semenchenko_schema.external_table

SELECT COUNT(*) FROM semenchenko_schema.fact_tripdata
