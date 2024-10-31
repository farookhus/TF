resource "azurerm_subscription_template_deployment" "armtemplate" {
  name             = "example-deployment"
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
  "name": "AgentlessVmScanning",
  "properties": {
    "enforce": "string",
    "extensions": [
      {
        "isEnabled": "True",
        "name": "AgentlessVmScanning"
      }
    ],
    "pricingTier": "Standard",
    "subPlan": "P1"
  }
}
    ],
    "outputs": {}
}
TEMPLATE

}





