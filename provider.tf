terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "shraavya-tf-stroage" #change it with your rg group for the storage account you created
    storage_account_name = "shraavyatfstorage" #change it with your storage account name
    container_name = "tfstate"  #change it with your container name
    key = "project1.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  
}


 
