# terraform.tfstate podla nazvu suboru
terraform {

  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstatedan"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}