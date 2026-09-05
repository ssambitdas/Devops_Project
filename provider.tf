terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>5.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-sambit"
    storage_account_name = "storagesambit"
    container_name       = "sambit-container"
    key                  = "terraform.sambit-container"
}
}
provider "azurerm" {
  features {}
}
