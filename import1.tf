resource "azurerm_subscription_template_deployment" "cspm" {
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
      "name": "VirtualMachines",
      "type": "Microsoft.Security/pricings",
      "apiVersion": "2023-01-01",
      "properties": {
        "extensions": [
                  {
          "isEnabled": "True",
          "name": "MdeDesignatedSubscription",
        },
        {
          "isEnabled": "True",
          "name": "AgentlessVmScanning",
        },
        {
          "isEnabled": "True",
          "name": "FileIntegrityMonitoring",
        }
        ],
        "subPlan": "P2",
        "pricingTier": "Standard"
      }
    }
        ]            
     }   
TEMPLATE
}
