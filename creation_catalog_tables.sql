CREATE TABLE semenchenko_schema.Vendor (ID INT, Name VARCHAR(50)) WITH (
    DISTRIBUTION = REPLICATE
)

INSERT INTO semenchenko_schema.Vendor (ID, Name) VALUES (1, 'Creative Mobile Technologies, LLC') 
INSERT INTO semenchenko_schema.Vendor (ID, Name) VALUES (2, 'VeriFone Inc.') 

CREATE TABLE semenchenko_schema.RateCode (ID INT, Name VARCHAR(30)) WITH (
    DISTRIBUTION = REPLICATE
)

INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (1, 'Standard rate') 
INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (2, 'JFK') 
INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (3, 'Newark') 
INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (4, 'Nassau or Westchester') 
INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (5, 'Negotiated fare') 
INSERT INTO semenchenko_schema.RateCode (ID, Name) VALUES (6, 'Group ride') 

CREATE TABLE semenchenko_schema.Payment_type (ID INT, Name VARCHAR(30)) WITH (
    DISTRIBUTION = REPLICATE
)

INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (1, 'Credit card') 
INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (2, 'Cash') 
INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (3, 'No charge') 
INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (4, 'Dispute') 
INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (5, 'Unknown') 
INSERT INTO semenchenko_schema.Payment_type (ID, Name) VALUES (6, 'Voided trip') 

SELECT * FROM semenchenko_schema.Vendor
SELECT * FROM semenchenko_schema.RateCode
SELECT * FROM semenchenko_schema.Payment_type

-- DROP TABLE semenchenko_schema.Vendor
-- DROP TABLE semenchenko_schema.RateCode
-- DROP TABLE semenchenko_schema.Payment_type
