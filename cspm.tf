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
      "type": "Microsoft.Security/pricings",
       "apiVersion": "2023-01-01",
       "name":"CloudPosture",
       "properties": {
            "pricingTier": "Standard",
            "subPlan": "P2"
          }
     },
               {
      "type": "Microsoft.Security/pricings",
       "apiVersion": "2023-01-01",
       "name":"VirtualMachines",
       "properties": {
            "pricingTier": "Standard",
            "subPlan": "P1"
          }
     },
     {
      "type": "Microsoft.Security/pricings",
       "apiVersion": "2023-01-01",
       "name":"AppServices",
       "properties": {
            "pricingTier": "Standard",
            "subPlan": "P1"
          }
     }
        ]            
     }   
TEMPLATE
}