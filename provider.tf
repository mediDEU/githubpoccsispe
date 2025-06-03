terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id= "b307668a-47b5-4933-b51f-316827f474fa"
}
