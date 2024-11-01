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
      "extensions": [
        {
          "isEnabled": "False",
          "name": "MdeDesignatedSubscription",
        },
        {
          "isEnabled": "False",
          "name": "AgentlessVmScanning",
        },
        {
          "isEnabled": "False",
          "name": "FileIntegrityMonitoring",
        }
      ],
      "name": "VirtualMachines",
      "pricingTier": "Standard",
      "subPlan": "P2",
      "type": "Microsoft.Security/pricings"
    }
        ]            
     }   
TEMPLATE
}
