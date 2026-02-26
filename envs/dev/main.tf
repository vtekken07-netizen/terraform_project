provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  env        = "dev"  
}

module "ec2" {
  source         = "../../modules/ec2"
  ami            = "ami-0abcdef1234567890"
  instance_type  = "t2.micro"
  env            = "dev"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "vishnu-dev-bucket"
  env         = "dev"
}