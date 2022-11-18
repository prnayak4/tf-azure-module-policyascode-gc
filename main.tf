terraform {
  #backend "remote" {}
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 2.0"
    }
  }
} 

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

module "policyset_definitions" {
  source = "./modules/policyset-definitions"
}



module "policy_assignments" {
  source = "./modules/policy-assignments"
   rggroup = var.rggroup 
   location = var.location 
   
   guest_configuration_policyset_id        = module.policyset_definitions.guest_configuration_policyset_id
   
}
 


