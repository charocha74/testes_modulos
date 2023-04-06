az_rg1 = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_cidr = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
db_subnet_cidr = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]

ec2_teste_map = {
  instance1 = {
    ami                    = "ami-05fab674de2157a80" #ami-0557a15b87f6559cf
    instance_type          = "t3a.nano"
    key_name               = "chaveteste"
    monitoring             = true
  }
  instance2 = {
    ami                    = "ami-0557a15b87f6559cf"
    instance_type          = "t3a.nano"
    key_name               = "chaveteste"
    monitoring             = true
  }
}
