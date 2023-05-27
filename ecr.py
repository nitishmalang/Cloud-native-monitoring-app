import boto3

# Configure AWS credentials
aws_access_key_id = 'cognizetech2@gmail.com'
aws_secret_access_key = 'Guigui@420'
aws_region = 'ap-south-1'  # Replace with your desired region

# Create ECR client
ecr_client = boto3.client('ecr',
                          aws_access_key_id=aws_access_key_id,
                          aws_secret_access_key=aws_secret_access_key,
                          region_name=aws_region)

# Define repository name
repository_name = "my-cloud-native-repo"

# Create ECR repository
response = ecr_client.create_repository(repositoryName=repository_name)

# Get repository URI
repository_uri = response['repository']['repositoryUri']

print(repository_uri)



