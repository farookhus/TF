# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
/* terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
} */

 terraform {
   required_providers {
     azapi = {
       source = "Azure/azapi"
     }
         azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
   }
 }

 provider "azapi" {
 }

 provider "azurerm" {
   features {}
 }

terraform {
  cloud {
    organization = "sfs_org"
    workspaces {
      name = "common"
    }
  }
}
