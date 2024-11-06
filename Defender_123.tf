resource "azurerm_subscription_template_deployment" "newdefender123456" {
  name             = "newdefender123456"
  location         = "East US"
  template_content = <<TEMPLATE

{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
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
                          "isEnabled": "False"
                        },
                        {
                          "name": "MdeDesignatedSubscription",
                          "isEnabled": "False"
                        }
                      ]
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "StorageAccounts",                    
                    "properties": {
                      "subPlan": "DefenderForStorageV2",
                      "pricingTier": "Standard",
                      "extensions": [
                        {
                    "name": "OnUploadMalwareScanning",
                    "isEnabled": "False",
                    "additionalExtensionProperties": {
                      "CapGBPerMonthPerStorageAccount": "-1"
                    }
                  },
                        {
                          "name": "SensitiveDataDiscovery",
                          "isEnabled": "False"
                        }
                      ]
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "Containers",                    
                    "properties": {
                      "pricingTier": "Standard",
                      "extensions": [
                        {
                          "name": "ContainerRegistriesVulnerabilityAssessments",
                          "isEnabled": "False"
                        },
                                                {
                          "name": "AgentlessDiscoveryForKubernetes",
                          "isEnabled": "False"
                        },
                                                {
                          "name": "ContainerSensor",
                          "isEnabled": "False"
                        }
                      ]
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "SqlServerVirtualMachines",
                    "properties": {
                      "pricingTier": "Standard"
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2018-06-01",
                    "name": "AppServices",
                    "properties": {
                      "pricingTier": "Standard"
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "SqlServers",
                    "properties": {
                      "pricingTier": "Standard"
                    }
                  },
                  {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "KeyVaults",
                    "properties": {
                      "pricingTier": "Standard",
                      "subPlan": "PerTransaction"
                    }
                  },
                                      {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2023-01-01",
                    "name": "Arm",
                    "properties": {
                      "pricingTier": "Standard",
                      "subPlan": "PerApiCall"
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2018-06-01",
                    "name": "OpenSourceRelationalDatabases",
                    "properties": {
                      "pricingTier": "Standard"
                    }
                  },
                                    {
                    "type": "Microsoft.Security/pricings",
                    "apiVersion": "2018-06-01",
                    "name": "CosmosDbs",
                    "properties": {
                      "pricingTier": "Standard"
                    }
                  },
                       {
    "type": "Microsoft.Security/pricings",
    "apiVersion": "2023-01-01",
    "name": "CloudPosture",
    "properties": {
      "pricingTier": "Standard",
      "enforce": "False",
      "extensions": [
              {
          "name": "SensitiveDataDiscovery",
          "isEnabled": "False"
        },
                {
          "name": "ContainerRegistriesVulnerabilityAssessments",
          "isEnabled": "False"
        },
                {
          "name": "AgentlessDiscoveryForKubernetes",
          "isEnabled": "False"
        },
        {
          "name": "AgentlessVmScanning",
          "isEnabled": "False"
        },
        {
          "name": "EntraPermissionsManagement",
          "isEnabled": "False"
        }
      ]
    }
  }               
  ]
}
TEMPLATE

}


