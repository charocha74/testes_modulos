module "vpc_us1" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.name_prefix}-VPC"
  cidr = var.vpc_cidr_block

  azs              = var.az_rg1
  private_subnets  = var.private_subnet_cidr#["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]#var.private_subnet_cidr
  public_subnets   = var.public_subnet_cidr#["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]#var.private_subnet_cidr
  database_subnets = var.db_subnet_cidr#["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]#var.db_subnet_cidr

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}