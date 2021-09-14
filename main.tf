terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.56.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
#   shared_credentials_file = "C:\\Users\\sbiswas\\.aws\\credentials"
  access_key = ""
  secret_key = ""
}

#module "lambda" {
  #source = "./modules/lambda"
#}
#module "apigateway" {
  #source = "./modules/apigateway"
#}
