#To Get the VPC and Subnet  details from AWS 
data "aws_vpc" "vpc_details" {
  filter {
    name   = "tag:Name"
    values = ["default vpc2"]   # Replace Your VPC name here , given vpc is  for example 
  }
}
data "aws_subnets" "subnets_details" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_details.id]
  }
  filter {
    name   = "tag:Name"
    values = ["webapp-subnet-*"]   #Your subnet name filtering  
  }
}
data "aws_subnet" "webapp_subnet_a" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_details.id]
  }
  filter {
    name   = "tag:Name"
    values = ["webapp-subnet-a"] #Your subnet  with specific tag filtering
  }
}

# Retrieve Security Groups
data "aws_security_groups" "associated" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_details.id]
  }
  filter {
    name   = "group-name"
    values = ["test_sg", ""]  # Your Security name here , Add more security group names if needed, 
  }
}

#To Retrieve Secret value details from AWS SecretManager 
data "aws_secretsmanager_secret" "secret_name" {
  name = "Mq_secret"  # Replace with your secret name  
}

data "aws_secretsmanager_secret_version" "secret_details" {
  secret_id = data.aws_secretsmanager_secret.secret_name.id
}

