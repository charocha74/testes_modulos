 module "service_sg" {
   source = "terraform-aws-modules/security-group/aws"

   name        = "${var.name_prefix}-SG"
   description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
   vpc_id      = module.vpc_us1.vpc_id

   ingress_cidr_blocks      = ["10.0.0.0/16"]
   ingress_rules            = ["http-80-tcp", "ssh-tcp"]
   ingress_with_cidr_blocks = [
     {
       from_port   = 8080
       to_port     = 8090
       protocol    = "tcp"
       description = "User-service ports"
       cidr_blocks = "10.0.0.0/16"
     },
     {
       rule        = "postgresql-tcp"
       cidr_blocks = "0.0.0.0/0"
     },
   ]
 }