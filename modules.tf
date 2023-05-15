module "network" {
    source = "./network_module"
    vpc_cidr = var.vpc_cidr_block
    env = var.enviroment
    subnet_1_cidr = var.subnet_1_cidr
    subnet_2_cidr = var.subnet_2_cidr
    az_one = var.first_az
}

module "server" {
    source = "./server_module"
    instance_type = var.instance_type
    vpc_id = module.network.vpc_id
    vpc_cidr_block = module.network.vpc_cidr_block
    enviroment = var.enviroment
    public_subnet_1_id = module.network.public_subnet_1_id
    private_subnet_1_id = module.network.private_subnet_1_id
    key_name = var.key_name
}