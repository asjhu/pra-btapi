terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.s_id
  client_id       = var.c_id
  client_secret   = var.c_sec
  tenant_id       = var.t_id
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resourcename
  location = var.location
}
