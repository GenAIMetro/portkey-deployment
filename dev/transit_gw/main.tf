module "transitgw" {
    source = "git::https://github.com/GenAIMetro/portkey-modules.git//modules/transit_gw"
    name = var.name
    environment = var.environment
    region = var.region
    availability_zones = var.availability_zones
    transitgw_dest_cidr_block = var.transitgw_dest_cidr_block
    vpc_cidr = var.vpc_cidr
    addon_tags = var.addon_tags
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
    private_subnets = data.terraform_remote_state.vpc.outputs.private_subnet_ids
}