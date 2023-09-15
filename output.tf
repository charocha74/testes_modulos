output "private_subnet_ids" {
    value = [module.vpc_us1.private_subnets]
}