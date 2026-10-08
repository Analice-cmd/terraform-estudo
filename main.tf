terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}


provider "azurerm" {
  features {}
}

variable "admin_password" {
  type      = string
  sensitive = true
}
resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-grafica"
  location = "South Africa North"
}
