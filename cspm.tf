
resource "azurerm_security_center_subscription_pricing" "pricingvm" {
  tier          = "Standard"
  resource_type = "VirtualMachines"
}

resource "azurerm_security_center_subscription_pricing" "pricingcp" {
  tier          = "Standard"
  resource_type = "CloudPosture"

  extension {
    name = "AgentlessDiscoveryForKubernetes"
  }

  extension {
    name = "OnUploadMalwareScanning"
    }
  
  extension {
    name = "SensitiveDataDiscovery"
  }

#   extension {
#     name = "MdeDesignatedSubscription"
#   }

  extension {
    name = "AgentlessVmScanning"
  }

    extension {
    name = "EntraPermissionsManagement"
  }

#     extension {
#     name = "FileIntegrityMonitoring"
#   }

    extension {
    name = "ContainerSensor"
  }

      extension {
    name = "AIPromptEvidence"
  }

}

/* resource "azurerm_subscription_template_deployment" "cspm" {
  name             = "cspm"
  location         = "East US"
  template_content = <<TEMPLATE
{
    "$schema": "https://schema.management.azure.com/schemas/2018-05-01/subscriptionDeploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {},
    "functions": [],
    "variables": {},
    "resources": [
     {
      "type": "Microsoft.Security/pricings",
       "apiVersion": "2023-01-01",
       "name":"AppServices",
       "properties": {
            "pricingTier": "Standard"
          }
     },
     {
      "type": "Microsoft.Security/pricings",
       "apiVersion": "2023-01-01",
       "name":"VirtualMachines",
       "properties": {
            "pricingTier": "Standard"
          }
     }
        ]            
     }   
TEMPLATE
} */