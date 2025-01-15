# Define a module to handle multiple subscription IDs
module "subscriptions" {
  source = "./modules/subscription"

  subscription_ids = local.subscription_ids
}

# Define locals for the subscription IDs
locals {
  subscription_ids = [
    "a682efd9-27e6-4af8-9d10-574e2a214eab",
    "a682efd9-27e6-4af8-9d10-574e2a214eab"
  ]
}

# Example module to use the subscription IDs
module "example" {
  source = "./modules/example"

  subscription_id = element(local.subscription_ids, count.index)
  count           = length(local.subscription_ids)
}
