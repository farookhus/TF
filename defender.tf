
 resource "azurerm_resource_group" "sfsdefender" {
   name     = "sfsdefender"
   location = "East US"
 }

resource "azurerm_storage_account" "sfsdefender" {
  name                     = "sfsdefenderstorage"
  resource_group_name      = azurerm_resource_group.sfsdefender.name
  location                 = azurerm_resource_group.sfsdefender.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_security_center_subscription_pricing" "sfsdefender" {
  tier          = "Standard"
  resource_type = "StorageAccounts"
  subplan       = "DefenderForStorageV2"
}

/* resource "azapi_resource" "sfsdefender" {
  type = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  name = "sfsdefender"
  parent_id = azurerm_resource_group.sfsdefender.id
  body = {
    properties = {
      isEnabled = false
      malwareScanning = {
        onUpload = {
          capGBPerMonth = -1
          isEnabled = false
        }
        scanResultsEventGridTopicResourceId = "test"
      }
      overrideSubscriptionLevelSettings = false
      sensitiveDataDiscovery = {
        isEnabled = false
      }
    }
  }
}
 */
/* resource "azapi_resource_action" "enable_defender_for_Storage" {
  type        = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
  resource_id = "${azurerm_storage_account.sfsdefender.id}/providers/Microsoft.Security/defenderForStorageSettings/current"
  method      = "PUT"
  
  body = {
    properties = {
      isEnabled = false
      malwareScanning = {
        onUpload = {
          isEnabled     = false
          capGBPerMonth = -1
        }
      }
      sensitiveDataDiscovery = {
        isEnabled = false
      }
      overrideSubscriptionLevelSettings = false
    }
  }
}

resource "azapi_resource" "my_management_group_action" {

  type = "Microsoft.Management/managementGroups"  

  parent_id = "your_management_group_id" 

  # Other properties specific to the action you want to perform

} */


resource "azapi_resource" "defender_storage" {
  type     = "Microsoft.Security/autoProvisioningSettings@2017-08-01-preview"
  name     = "default"
  parent_id   = "/providers/Microsoft.Management/managementGroups/Farook-mgmt"

  body = {
    properties = {
      autoProvision      = "On"
      autoProvisioning   = {
        "Enabled" : true
        "Settings" : {
          "dataCollection" = {
            "enabled" : true
          }
          "storageAccounts" = {
            "enabled" : true  # Enable Defender for Storage
          }
        }
      }
    }
  }
}

/* resource "azapi_update_resource" "enable_defender_for_Storage_Update" {
   type        = "Microsoft.Security/defenderForStorageSettings@2022-12-01-preview"
   #resource_id = "${azurerm_storage_account.sfsdefender.id}/providers/Microsoft.Security/defenderForStorageSettings/current"
   parent_id   = "/providers/Microsoft.Management/managementGroups/Farook-mgmt"
   name = "sfsmgmt"
  body = {
    properties = {
      isEnabled = false
      malwareScanning = {
        onUpload = {
          isEnabled     = false
          capGBPerMonth = -1
        }
      }
      sensitiveDataDiscovery = {
        isEnabled = false
      }
      overrideSubscriptionLevelSettings = true
    }
  }
 }
 */
/* resource "azurerm_security_center_storage_defender" "sfs_defender" {
  storage_account_id = azurerm_storage_account.sfs_defender.id
} */