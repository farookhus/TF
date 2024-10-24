resource "azurerm_policy_set_definition" "sfspolicysetdifinition" {
  name         = "sfspolicysetdifinition"
  policy_type  = "Custom"
  display_name = "sfspolicysetdifinition"

  parameters = <<PARAMETERS
    {
        "allowedLocations": {
            "type": "Array",
            "metadata": {
                "description": "The list of allowed locations for resources.",
                "displayName": "Allowed locations",
                "strongType": "location"
            }
        }
    }
PARAMETERS

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/9ea02ca2-71db-412d-8b00-7c7ca9fcd32d"
    parameter_values     = <<VALUE
    {
      "listOfAllowedLocations": {"value": "[parameters('allowedLocations')]"}
    }
    VALUE
  }
}

/* data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_assignment" "sfspolicysetdifinition-assignment" {
  name                 = "sgfpolicysetdifinition-assignment"
  policy_definition_id = azurerm_policy_definition.sfspolicysetdifinition.id
  subscription_id      = data.azurerm_subscription.current.id
} */