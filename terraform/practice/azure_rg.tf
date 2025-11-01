provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "cicd-practice-rg" {
  name     = "cicd-practice-rg"
  location = "South India"
}
