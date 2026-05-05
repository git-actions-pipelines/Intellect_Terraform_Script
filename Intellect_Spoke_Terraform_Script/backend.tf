# Backend Configuration for Spoke Terraform State File
# This configures Azure Storage as the remote backend for Terraform state

terraform {
  backend "azurerm" {
    # Backend configuration for Spoke state file
    # Uncomment and configure these values, or pass via -backend-config during terraform init
    resource_group_name  = "my-tf-rg"
    storage_account_name = "tfstatesanki26"
    container_name       = "tfstate-spoke"
    key                  = "spoke.terraform.tfstate"
  }
} 