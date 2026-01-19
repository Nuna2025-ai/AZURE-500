

    
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name   = "rg1-terraform_state-dev"
    storage_account_name  = "stt3ecvezgid"
    container_name        = "tfstate"
    key                   = "obsevabality-dev.tfstate"  # Nom du fichier d’état
  }
}
provider "azurerm" {
  features {}

  subscription_id = "41268457-e7a3-4dcd-938b-f95ee7c294e3"
}



