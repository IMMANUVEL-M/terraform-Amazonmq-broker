#Terraform Version Definition
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0" # specify the version constraint as needed
    }
  }
}
