#======= Variaveis Networking =======
variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
    type = list(any)
}

variable "public_subnet_cidr" {
    type = list(any)
}

variable "db_subnet_cidr" {
    type = list(any)
}

#======= Variaveis regionais =========

variable "region" {
    type = string
    default = "us-east-1"
}

variable "az_rg1"{
    type = list(any)
}

#========= Variaveis ec2 ============

variable "ec2_teste_map" {
  type =  map (
    object ({
      ami = string,
      instance_type = string,
      key_name = string,
      monitoring = bool
    })
  )
}


#======== Variaveis gerais ============

variable "name_prefix" {
    type = string
    default = "testes_mudulos"
}