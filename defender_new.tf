resource "azapi_resource" "df" {
  type = "Microsoft.Security/pricings@2024-01-01"
  parent_id = "/providers/Microsoft.Management/managementGroups/Farook-mgmt"
  name = "StorageAccounts"
  body = {properties = {
    pricingTier = "Standard"       
  }}
    }

resource "azapi_resource" "dfvm" {
  type = "Microsoft.Security/pricings@2024-01-01"
  parent_id = "/providers/Microsoft.Management/managementGroups/Farook-mgmt"
  name = "VirtualMachines"
  body = {properties = {
    pricingTier = "Standard"       
  }}
    }    
