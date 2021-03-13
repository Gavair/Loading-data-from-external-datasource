import os, uuid
from azure.storage.blob import BlobServiceClient, BlobClient, ContainerClient

connect_str = "DefaultEndpointsProtocol=https;AccountName=bigdataschool456;AccountKey=DjOhWp3vp5DvKiSxflMLIoG0ykCYDKl0Pu2iSYJo94EvLrpx4p2mLZg7XNZ0SgmV8iLwK9XtyGbIX7iQKTGEcQ==;EndpointSuffix=core.windows.net"

blob_service_client = BlobServiceClient.from_connection_string(connect_str)
container_name = "homework3"
container_client = blob_service_client.get_container_client(container_name)

local_path = ""
local_file_name = "yellow_tripdata_2020-01.csv"
upload_file_path = os.path.join(local_path, local_file_name)

blob_client = blob_service_client.get_blob_client(container=container_name, blob=local_file_name)

# print(blob_client.exists())

with open(upload_file_path, "rb") as data:
    blob_client.upload_blob(data)
