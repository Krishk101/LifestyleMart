terraform {
  backend "azurerm" {
    resource_group_name  = "rg-lifestylemart-tfstate"
    storage_account_name = "stlifestylemarttfstate"
    container_name       = "tfstate"
    key                  = "lifestylemart-dev.tfstate"

    use_azuread_auth = true
  }
}