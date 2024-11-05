/*
Note: This is a generated HCL content from the JSON input which is based on the latest API version available.
To import the resource, please run the following command:
terraform import azapi_resource.version /providers/Microsoft.Authorization/policyDefinitions/72f8cee7-2937-403d-84a1-a4e3e57f3c21/versions/1.0.0?api-version=2024-05-01

Or add the below config:
import {
  id = "/providers/Microsoft.Authorization/policyDefinitions/72f8cee7-2937-403d-84a1-a4e3e57f3c21/versions/1.0.0?api-version=2024-05-01"
  to = azapi_resource.version
}
*/

resource "azapi_resource" "version" {
  type      = "Microsoft.Authorization/policyDefinitions/versions@2024-05-01"
  parent_id = "/providers/Microsoft.Authorization/policyDefinitions/72f8cee7-2937-403d-84a1-a4e3e57f3c21"
  name      = "1.0.0"
  body = {
    properties = {
      description = "Defender Cloud Security Posture Management (CSPM) provides enhanced posture capabilities and a new intelligent cloud security graph to help identify, prioritize, and reduce risk. Defender CSPM is available in addition to the free foundational security posture capabilities turned on by default in Defender for Cloud."
      displayName = "Configure Microsoft Defender CSPM plan"
      metadata = {
        category = "Security Center"
        version  = "1.0.0"
      }
      mode = "All"
      parameters = {
        effect = {
          allowedValues = ["DeployIfNotExists", "Disabled"]
          defaultValue  = "DeployIfNotExists"
          metadata = {
            description = "Enable or disable the execution of the policy"
            displayName = "Effect"
          }
          type = "String"
        }
        isAgentlessDiscoveryForKubernetesEnabled = {
          allowedValues = ["true", "false"]
          defaultValue  = "true"
          metadata = {
            description = "Enable or disable the Agentless Discovery for Kubernetes add-on feature"
            displayName = "Agentless Discovery for Kubernetes Enabled"
          }
          type = "String"
        }
        isAgentlessVmScanningEnabled = {
          allowedValues = ["true", "false"]
          defaultValue  = "true"
          metadata = {
            description = "Enable or disable the Agentless VM Scanning add-on feature"
            displayName = "Agentless VM Scanning Enabled"
          }
          type = "String"
        }
        isContainerRegistriesVulnerabilityAssessmentsEnabled = {
          allowedValues = ["true", "false"]
          defaultValue  = "true"
          metadata = {
            description = "Enable or disable the Container Registries Vulnerability Assessments add-on feature"
            displayName = "Container Registries Vulnerability Assessments Enabled"
          }
          type = "String"
        }
        isEntraPermissionsManagementEnabled = {
          allowedValues = ["true", "false"]
          defaultValue  = "true"
          metadata = {
            description = "Enable or disable the Permissions Management add-on feature"
            displayName = "Permissions Management Enabled"
          }
          type = "String"
        }
        isSensitiveDataDiscoveryEnabled = {
          allowedValues = ["true", "false"]
          defaultValue  = "true"
          metadata = {
            description = "Enable or disable the Sensitive Data Discovery add-on feature"
            displayName = "Sensitive Data Discovery Enabled"
          }
          type = "String"
        }
      }
      policyRule = {
        if = {
          equals = "Microsoft.Resources/subscriptions"
          field  = "type"
        }
        then = {
          details = {
            deployment = {
              location = "westeurope"
              properties = {
                mode = "incremental"
                parameters = {
                  isAgentlessDiscoveryForKubernetesEnabled = {
                    value = "[parameters('isAgentlessDiscoveryForKubernetesEnabled')]"
                  }
                  isAgentlessVmScanningEnabled = {
                    value = "[parameters('isAgentlessVmScanningEnabled')]"
                  }
                  isContainerRegistriesVulnerabilityAssessmentsEnabled = {
                    value = "[parameters('isContainerRegistriesVulnerabilityAssessmentsEnabled')]"
                  }
                  isEntraPermissionsManagementEnabled = {
                    value = "[parameters('isEntraPermissionsManagementEnabled')]"
                  }
                  isSensitiveDataDiscoveryEnabled = {
                    value = "[parameters('isSensitiveDataDiscoveryEnabled')]"
                  }
                }
                template = {
                  "$schema"      = "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#"
                  contentVersion = "1.0.0.0"
                  parameters = {
                    isAgentlessDiscoveryForKubernetesEnabled = {
                      type = "String"
                    }
                    isAgentlessVmScanningEnabled = {
                      type = "String"
                    }
                    isContainerRegistriesVulnerabilityAssessmentsEnabled = {
                      type = "String"
                    }
                    isEntraPermissionsManagementEnabled = {
                      type = "String"
                    }
                    isSensitiveDataDiscoveryEnabled = {
                      type = "String"
                    }
                  }
                  resources = [{
                    apiVersion = "2023-01-01"
                    name       = "CloudPosture"
                    properties = {
                      extensions = [{
                        isEnabled = "[parameters('isSensitiveDataDiscoveryEnabled')]"
                        name      = "SensitiveDataDiscovery"
                        }, {
                        isEnabled = "[parameters('isContainerRegistriesVulnerabilityAssessmentsEnabled')]"
                        name      = "ContainerRegistriesVulnerabilityAssessments"
                        }, {
                        isEnabled = "[parameters('isAgentlessDiscoveryForKubernetesEnabled')]"
                        name      = "AgentlessDiscoveryForKubernetes"
                        }, {
                        isEnabled = "[parameters('isAgentlessVmScanningEnabled')]"
                        name      = "AgentlessVmScanning"
                        }, {
                        isEnabled = "[parameters('isEntraPermissionsManagementEnabled')]"
                        name      = "EntraPermissionsManagement"
                      }]
                      pricingTier = "Standard"
                    }
                    type = "Microsoft.Security/pricings"
                  }]
                }
              }
            }
            deploymentScope = "subscription"
            existenceCondition = {
              allOf = [{
                equals = "Standard"
                field  = "Microsoft.Security/pricings/pricingTier"
                }, {
                count = {
                  field = "Microsoft.Security/pricings/extensions[*]"
                  where = {
                    allOf = [{
                      equals = "SensitiveDataDiscovery"
                      field  = "Microsoft.Security/pricings/extensions[*].name"
                      }, {
                      equals = "[parameters('isSensitiveDataDiscoveryEnabled')]"
                      field  = "Microsoft.Security/pricings/extensions[*].isEnabled"
                    }]
                  }
                }
                equals = 1
                }, {
                count = {
                  field = "Microsoft.Security/pricings/extensions[*]"
                  where = {
                    allOf = [{
                      equals = "ContainerRegistriesVulnerabilityAssessments"
                      field  = "Microsoft.Security/pricings/extensions[*].name"
                      }, {
                      equals = "[parameters('isContainerRegistriesVulnerabilityAssessmentsEnabled')]"
                      field  = "Microsoft.Security/pricings/extensions[*].isEnabled"
                    }]
                  }
                }
                equals = 1
                }, {
                count = {
                  field = "Microsoft.Security/pricings/extensions[*]"
                  where = {
                    allOf = [{
                      equals = "AgentlessDiscoveryForKubernetes"
                      field  = "Microsoft.Security/pricings/extensions[*].name"
                      }, {
                      equals = "[parameters('isAgentlessDiscoveryForKubernetesEnabled')]"
                      field  = "Microsoft.Security/pricings/extensions[*].isEnabled"
                    }]
                  }
                }
                equals = 1
                }, {
                count = {
                  field = "Microsoft.Security/pricings/extensions[*]"
                  where = {
                    allOf = [{
                      equals = "AgentlessVmScanning"
                      field  = "Microsoft.Security/pricings/extensions[*].name"
                      }, {
                      equals = "[parameters('isAgentlessVmScanningEnabled')]"
                      field  = "Microsoft.Security/pricings/extensions[*].isEnabled"
                    }]
                  }
                }
                equals = 1
                }, {
                count = {
                  field = "Microsoft.Security/pricings/extensions[*]"
                  where = {
                    allOf = [{
                      equals = "EntraPermissionsManagement"
                      field  = "Microsoft.Security/pricings/extensions[*].name"
                      }, {
                      equals = "[parameters('isEntraPermissionsManagementEnabled')]"
                      field  = "Microsoft.Security/pricings/extensions[*].isEnabled"
                    }]
                  }
                }
                equals = 1
              }]
            }
            existenceScope    = "subscription"
            name              = "CloudPosture"
            roleDefinitionIds = ["/providers/Microsoft.Authorization/roleDefinitions/8e3af657-a8ff-443c-a75c-2fe8c4bcb635"]
            type              = "Microsoft.Security/pricings"
          }
          effect = "[parameters('effect')]"
        }
      }
      policyType = "BuiltIn"
      version    = "1.0.0"
    }
  }
}
