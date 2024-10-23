terraform {
  cloud {
    organization = "sfs_org"
    workspaces {
      name = "common"
    }
  }
}

resource "random_pet" "vpc" {
  
}