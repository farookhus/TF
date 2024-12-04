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