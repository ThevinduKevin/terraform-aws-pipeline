terraform {
  backend "s3" {
    bucket         = "terra-project-bucket"
    key            = "terraform/states/project-state.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terra-project-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24"]
}

module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.vpc.subnet_ids[0]
  instance_type = "t2.micro"
  ami_id        = "ami-0c1a7f89451184c8b"
}