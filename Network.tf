module "my_network" {
    source = "./network_module"
    vpc_cidr = var.vpc_cidr_block
    env = var.enviroment
    subnet_1_cidr = var.subnet_1_cidr
    subnet_2_cidr = var.subnet_2_cidr
    subnet_3_cidr = var.subnet_3_cidr
    subnet_4_cidr = var.subnet_4_cidr
    az_one = var.first_az
    az_two = var.second_az
}