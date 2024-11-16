module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  # version = "3.19.0"
  
  name = "eks"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a","ap-south-1b"]
  private_subnets = ["10.0.0.0/24","10.0.128.0/24"]
  public_subnets  = ["10.0.64.0/24","10.0.130.0/24"]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
  map_public_ip_on_launch = true 

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Environment = "test"
  }
}