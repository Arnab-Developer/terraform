terraform {
  required_version = ">= 1.6.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-org0101-terrastate-shared"
    storage_account_name = "storg0101terrastate"
    container_name       = "terrastate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}