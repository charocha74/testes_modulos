module "vpc_us1" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.name_prefix}-VPC"
  cidr = var.vpc_cidr_block

  azs              = var.az_rg1
  private_subnets  = var.private_subnet_cidr
  public_subnets   = var.private_subnet_cidr
  database_subnets = var.db_subnet_cidr

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}