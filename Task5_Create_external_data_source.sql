CREATE DATABASE SCOPED CREDENTIAL StorageCredential 
WITH
    IDENTITY = 'bigdataschool456',
    SECRET = 'DjOhWp3vp5DvKiSxflMLIoG0ykCYDKl0Pu2iSYJo94EvLrpx4p2mLZg7XNZ0SgmV8iLwK9XtyGbIX7iQKTGEcQ=='

CREATE EXTERNAL DATA SOURCE MyDataSource WITH (
    LOCATION = 'wasbs://homework3@bigdataschool456.blob.core.windows.net/',
    CREDENTIAL = StorageCredential,
    TYPE = HADOOP
);