module "nlb_teste" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "my-nlb-teste"

  load_balancer_type = "network"

  vpc_id  = "vpc-abcde012"
  subnets = ["subnet-abcde012", "subnet-bcde012a"]

  target_groups = [
  {
    name_prefix      = "pref-"
    backend_protocol = "TCP"
    backend_port     = 80
    target_type      = "ip"
  }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "TCP"
      target_group_index = 0
    }
  ]
}