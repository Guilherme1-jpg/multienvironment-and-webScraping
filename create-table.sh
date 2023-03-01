aws dynamodb delete-table --table-name CommitMessage-qa --endpoint-url http://localhost:4566

aws dynamodb create-table --table-name CommitMessage-qa --endpoint-url http://localhost:4566 --attribute-definitions AttributeName=id,AttributeType=S AttributeName=name,AttributeType=S --key-schema AttributeName=id,KeyType=HASH AttributeName=name,KeyType=RANGE --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 

aws dynamodb list-tables --endpoint-url http://localhost:4566