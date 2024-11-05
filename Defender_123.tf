
resource "azurerm_subscription_template_deployment" "defenderplannew" {
  name             = "defenderplannew"
  location         = "East US"
  template_content = <<TEMPLATE

{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
     {
    "type": "Microsoft.Security/pricings",
    "apiVersion": "2023-01-01",
    "name": "CloudPosture",
    "properties": {
      "pricingTier": "Standard",
      "extensions": [
        {
          "name": "SensitiveDataDiscovery",
          "isEnabled": "true"
        },
        {
          "name": "ContainerRegistriesVulnerabilityAssessments",
          "isEnabled": "true"
        },
        {
          "name": "AgentlessDiscoveryForKubernetes",
          "isEnabled": "true"
        },
        {
          "name": "AgentlessVmScanning",
          "isEnabled": "true"
        },
        {
          "name": "EntraPermissionsManagement",
          "isEnabled": "true"
        }
      ]
    },
                      {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "VirtualMachines",
                    "properties": {
                      "pricingTier": "Standard",
                      "subPlan": "P2",
                      "extensions": [
                        {
                          "name": "AgentlessVmScanning",
                          "isEnabled": "true"
                        },
                        {
                          "name": "MdeDesignatedSubscription",
                          "isEnabled": "false"
                        }
                      ]
                    }
                  }
  }   
  ]
}

TEMPLATE

}

