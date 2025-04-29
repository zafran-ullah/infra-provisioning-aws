provider "aws" {
  region = var.region
}


module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

resource "random_id" "rand" {
  byte_length = 8 # You can adjust the byte length if needed
}

module "s3_app_logs" {
  source      = "./modules/s3"
  bucket_name = "zafran-app-logs-${random_id.rand.hex}"
}

module "web_server" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id[0]
  key_name           = var.key_name
  name               = "web-server"
  security_group_ids = [module.vpc.web_sg_id]
}
