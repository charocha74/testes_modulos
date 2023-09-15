  module "ec2_instance" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 3.0"

    for_each = var.ec2_teste_map

    name = "teste-${each.key}"

    ami                    = data.aws_ami.ubuntu-linux-2004.id #each.value["ami"]
    instance_type          = each.value["instance_type"]
    key_name               = each.value["key_name"]
    monitoring             = true
    vpc_security_group_ids = [module.service_sg.security_group_id]
    subnet_id              = module.vpc_us1.private_subnets[0]

    tags = {
      Terraform   = "true"
      Environment = "dev"
    }
  }
