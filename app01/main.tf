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
  subscription_id =     var.subscription_id
  client_id       =     var.client_id
  client_secret   =     var.client_secret
  tenant_id       =     var.tenant_id
  features {}
}

variable "subscription_id" {
  default = ""
}
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}
variable "tenant_id" {
  default = ""
}
resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resourcename
  location = var.location
}
