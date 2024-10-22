######################################
# Resource Group
######################################

module "demo_resource_group" {
  source   = "./_modules/resourceGroup"
  location = var.demo_resource_group.location
  name     = var.demo_resource_group.name
  existing = var.demo_resource_group.existing
  tags     = var.tags
}
