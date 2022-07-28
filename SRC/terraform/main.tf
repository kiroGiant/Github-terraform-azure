terraform {
    required_providers {
      azurerm = {
        source ="hashicorp/azurerm"
        version ="=2.46.0"
      }
    }
    
    backend "azurerm" {
        resource_group_name  ="RF-ASR-MAtest"
        storage_account_name ="rftestma"
        container_name       ="tfstatefile"
        key                  = "dev.terraform.tfstate"
    }
}
# configure the microsoft azure provider
provider "azurerm" {
    features {}
    # subscription_id =var.subscription_id 
    # client_id       =var.client_id
    # client_secret   =var.client_secret
    # tenant_id       =var.tenant_id     
  
}


# create resource group
resource "azurerm_resource_group" "rg" {
    name  ="example_resourse"
    location = "west Europe"
  
}