resource "azapi_resource" "df" {
  type = "Microsoft.Security/pricings@2024-01-01"
  parent_id = "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab"
  name = "StorageAccounts"
  body = {properties = {
    pricingTier = "Standard"       
  }}
    }

resource "azapi_resource" "dfvm" {
  type = "Microsoft.Security/pricings@2024-01-01"
  parent_id = "/subscriptions/a682efd9-27e6-4af8-9d10-574e2a214eab"
  name = "VirtualMachines"
  body = {properties = {
    pricingTier = "Standard"       
  }}
    }    
