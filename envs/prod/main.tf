provider "aws" {
  region = "us-east-1"
}

# backend (remote state)
terraform {
  backend "s3" {
    bucket         = "vishnu-terraform-state-bucket"
    key            = "prod/terraform.tfsatate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock- table"
    encrypt        = true    
  }
}

# vpc module
module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.1.0.0/16"
  env        = "prod"
}

# EC2 module
module "ec2" {
  source         = "../../modules/ec2"
  ami            = "ami-0abcdf1013131313"
  instance_type  = "t3.medium"
  env            = "prod"
}

# S3 module
module "s3" {
  source      = "../../modules/s3"
  bucket_name = "vishnu-prod-bucket"
  env         = "prod"
}
                  3march
provider "aws" {
  region = "us-east-1"
}

# backend (remote state)
terraform {
  backend "s3" {
    bucket         = "vishnu-terraform-state-bucket"
    key            = "prod/terraform.tfstate" 
    region         = "us-east-" 
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
   }
}
#vpc module
module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.10.0.0/16"
  evn        = "prod" 
}

# EC2 module 
module "ec2" {
  source         = "../../modules/ec2"
  ami            = "ami-0efgfggwghgghhggh"
  instance_type  = "t3.medium"
  env            = "prod"
}
# S3 module 
module "s3" {
  source      = "../../modules/s3"
  bucket_name = "vishnu_prod_bucket"
  env         = "prod"
}

