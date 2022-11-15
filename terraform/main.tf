# Provider Block
terraform {
  backend "azurerm" {
    resource_group_name = "cloud-shell-storage-centralindia"
    storage_account_name = "terraformcicd"
    container_name = "tfstatefile"
    key = "dev.terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}