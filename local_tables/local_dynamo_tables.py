import boto3
from tables import tables

ddb = None

def create_tables():
    for table in tables:
        try:
            ttl_config = table.pop("TimeToLiveSpecification", None)
            ddb.create_table(**table)

            if ttl_config:
                ddb.update_time_to_live(
                    TableName=table.get("TableName"),
                    TimeToLiveSpecification=ttl_config
                )

        except Exception as err:
            print(err)

if __name__ == "__main__":
    ddb = boto3.client(
        "dynamodb",
        endpoint_url="http://localhost:8000",
        region_name="dummy",
        aws_access_key_id="dummy",
        aws_secret_access_key="dummy"
    )

    create_tables()