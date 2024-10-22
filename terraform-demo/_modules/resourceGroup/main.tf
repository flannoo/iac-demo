##################
# Resource Group
##################
data "azurerm_resource_group" "existing_resource_group" {
  count = var.existing ? 1 : 0
  name  = var.name
}

resource "azurerm_resource_group" "resource_group" {
  count    = var.existing ? 0 : 1
  location = var.location
  name     = var.name
  tags     = var.tags
}

output "name" {
  value = var.existing ? data.azurerm_resource_group.existing_resource_group[0].name : azurerm_resource_group.resource_group[0].name
}

output "location" {
  value = var.existing ? data.azurerm_resource_group.existing_resource_group[0].location : azurerm_resource_group.resource_group[0].location
}

output "id" {
  value = var.existing ? data.azurerm_resource_group.existing_resource_group[0].id : azurerm_resource_group.resource_group[0].id
}
