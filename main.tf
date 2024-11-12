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

/*  terraform {
   required_providers {
     azapi = {
       source = "Azure/azapi"
       version = "=2.0.1"
     }
         azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.47"
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
} */

terraform {
  required_version = ">= 1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0, < 4.0"
    }
    modtm = {
      source  = "Azure/modtm"
      version = ">= 0.1.8, < 1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "modtm" {
  enabled = false
}

module "mdc-defender-plans-azure" {
  source           = "Azure/mdc-defender-plans-azure/azure"
  version          = "2.0.0"
  mdc_plans_list   = var.mdc_plans_list
  subplans         = var.subplans
  enable_telemetry = var.enable_telemetry
}

/* module "mdc_plans_enable" {
  source           = "./terraform-azure-mdc-defender-plans-azure/mdc_plans_enable"
  mdc_plans_list   = var.mdc_plans_list
  subplans         = var.subplans
  enable_telemetry = var.enable_telemetry
} */