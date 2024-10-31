
resource "azurerm_subscription_template_deployment" "vmpricing" {
  name             = "vmpricing"
  location         = "East US"
  template_content = <<TEMPLATE

{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
      {
          "type": "Microsoft.Security/pricings",
          "apiVersion": "2018-06-01",
          "name": "VirtualMachines",
          "properties":{
              "pricingTier": "Standard"
          }
      }      
  ],
  "outputs": {}
}

TEMPLATE

}

resource "azurerm_management_group_template_deployment" "vmpricingmgmt" {
  name                = "vmpricingmgmt"
  location            = "East US"
  management_group_id = "Farook-mgmt"
  template_content = <<TEMPLATE

{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
      {
          "type": "Microsoft.Security/pricings",
          "apiVersion": "2018-06-01",
          "name": "VirtualMachines",
          "properties":{
              "pricingTier": "Standard"
          }
      }      
  ],
  "outputs": {}
}

TEMPLATE

}