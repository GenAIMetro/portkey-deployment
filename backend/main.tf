module "backend" {
  source = "git::https://github.com/GenAIMetro/portkey-modules.git//modules/backend"
  name = var.name
  environment = var.environment
  region = var.region
}

variable "name" {
  type = string
}
variable "region" {
  type = string
}
variable "environment" {
  type = string
}