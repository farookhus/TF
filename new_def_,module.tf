module "mdc-defender-plans-azure" {
  source  = "Azure/mdc-defender-plans-azure/azure"
  version = "2.0.0"
}

module "mdc_plans_enable" {
    source = "../.."
    mdc_plans_list = [
        "CloudPosture"
   ]

}