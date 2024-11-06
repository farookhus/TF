
resource "azurerm_subscription_template_deployment" "defenderplannew12" {
  name             = "defenderplannew12"
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
                    "enforce": 
                    "properties": {
                      "pricingTier": "Standard",
                      "subPlan": "P2",
                      "extensions": [
                        {
                          "name": "AgentlessVmScanning",
                          "isEnabled": "True"
                        },
                        {
                          "name": "MdeDesignatedSubscription",
                          "isEnabled": "True"
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
                    "isEnabled": "true",
                    "additionalExtensionProperties": {
                      "CapGBPerMonthPerStorageAccount": "-1"
                    }
                  },
                        {
                          "name": "SensitiveDataDiscovery",
                          "isEnabled": "True"
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
                          "isEnabled": "true"
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
      "extensions": [
              {
          "name": "SensitiveDataDiscovery",
          "isEnabled": "True"
        },
                {
          "name": "ContainerRegistriesVulnerabilityAssessments",
          "isEnabled": "True"
        },
                {
          "name": "AgentlessDiscoveryForKubernetes",
          "isEnabled": "True"
        },
        {
          "name": "AgentlessVmScanning",
          "isEnabled": "True"
        },
        {
          "name": "EntraPermissionsManagement",
          "isEnabled": "True"
        }
      ]
    }
  }               
  ]
}
TEMPLATE

}

