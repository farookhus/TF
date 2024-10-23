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
resource "random_pet" "s3" {
}