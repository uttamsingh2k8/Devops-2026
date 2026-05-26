# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "ad8f6297-a693-414f-9801-4ce8a4ab16f9"
}

resource "azurerm_resource_group" "dev" {
  name     = "dev-rg"
  location = "North Europe"
}

resource "azurerm_storage_account" "devsa0402" {
  name                     = "devsa0402"
  resource_group_name      = "dev-rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
