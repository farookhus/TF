/* 
 resource "azurerm_security_center_subscription_pricing" "pricingcp" {
   tier          = "Standard"
   resource_type = "CloudPosture"

   extension {
     name = "AgentlessDiscoveryForKubernetes"
   }
 
   extension {
     name = "SensitiveDataDiscovery"
   }

     extension {
     name = "EntraPermissionsManagement"
   }
     extension {
     name = "AgentlessVmScanning"
   }

        extension {
     name = "ContainerRegistriesVulnerabilityAssessments"
   }

 }

  resource "azurerm_security_center_subscription_pricing" "pricingvm" {
   tier          = "Standard"
   resource_type = "VirtualMachines"
   subplan = "P2"

   extension {
     name = "AgentlessVmScanning"
   }

      extension {
      name = "MdeDesignatedSubscription"
    }

 } 

   resource "azurerm_security_center_subscription_pricing" "PricingAppServices" {
   tier          = "Standard"
   resource_type = "AppServices"
 } 

  resource "azurerm_security_center_subscription_pricing" "pricingContainers" {
   tier          = "Standard"
   resource_type = "Containers"

   extension {
     name = "ContainerRegistriesVulnerabilityAssessments"
   }

      extension {
      name = "AgentlessDiscoveryForKubernetes"
    }

          extension {
      name = "ContainerSensor"
    }


 } 
 
     resource "azurerm_security_center_subscription_pricing" "PricingAppsqlservervm" {
   tier          = "Standard"
   resource_type = "SqlServerVirtualMachines"
 } 

     resource "azurerm_security_center_subscription_pricing" "PricingSqlServers" {
   tier          = "Standard"
   resource_type = "SqlServers"
 } 

   resource "azurerm_security_center_subscription_pricing" "pricingkv" {
   tier          = "Standard"
   resource_type = "KeyVaults"
   subplan = "PerTransaction"

 } 

   resource "azurerm_security_center_subscription_pricing" "pricingarm" {
   tier          = "Standard"
   resource_type = "Arm"
   subplan = "PerApiCall"

 } 

   resource "azurerm_security_center_subscription_pricing" "pricingOpenSourceRelationalDatabases" {
   tier          = "Standard"
   resource_type = "OpenSourceRelationalDatabases"

 } 

   resource "azurerm_security_center_subscription_pricing" "pricingCosmosDbs" {
   tier          = "Standard"
   resource_type = "CosmosDbs"

 }  */