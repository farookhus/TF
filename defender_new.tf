resource "azapi_resource" "df" {
  type = "Microsoft.Security/pricings@2024-01-01"
  body = {properties = {
    pricingTier = "Standard"       
  }}
    }
