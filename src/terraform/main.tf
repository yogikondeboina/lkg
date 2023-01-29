terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

   backend "azurerm" {
    resource_group_name = "demorg"
    storage_account_name = "demorgtfstore"
    container_name = "terraform"
    key = "dev.tfstate"
   }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
}


# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "lkg"
  location = "eastus"
}