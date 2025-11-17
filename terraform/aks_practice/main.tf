resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "practicedns"

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = "Standard_B1s"
  }

  identity { type = "SystemAssigned" }
}
