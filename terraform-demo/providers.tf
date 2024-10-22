terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.5.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 3.0.2"
    }
    azapi = {
      source = "Azure/azapi"
    }
  }

  backend "azurerm" {
    resource_group_name  = "<RESOURCE_GROUP_NAME>"
    storage_account_name = "<STORAGE_ACCOUNT_NAME>"
    container_name       = "<CONTAINER_NAME>"
    key                  = "<FILE_NAME>"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
  subscription_id = "<SUBSCRIPTION_ID>"
}

provider "azuread" {
  tenant_id = "<TENANT_ID>"
}

provider "azapi" {

}
