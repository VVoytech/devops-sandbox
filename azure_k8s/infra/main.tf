resource "random_string" "suffix" {
    length  = 6
    upper   = false
    special = false
}

resource "azurerm_resource_group" "main" {
    name     = "lab10-rg"
    location = "West Europe"
}

resource "azurerm_virtual_network" "main" {
    name                = "lab10-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.main.location
    resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "aks" {
    name                 = "aks-subnet"
    resource_group_name  = azurerm_resource_group.main.name
    virtual_network_name = azurerm_virtual_network.main.name
    address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_container_registry" "main" {
    name                = "lab10acr${random_string.suffix.result}"
    resource_group_name = azurerm_resource_group.main.name
    location            = azurerm_resource_group.main.location
    sku                 = "Basic"
    admin_enabled       = true
    public_network_access_enabled = true

}

resource "azurerm_kubernetes_cluster" "main" {
    name                = "lab10aks"
    location            = azurerm_resource_group.main.location
    resource_group_name = azurerm_resource_group.main.name
    dns_prefix          = "lab10aks"

    default_node_pool {
        name       = "default"
        node_count = 1
        vm_size    = "standard_a2_v2"
        vnet_subnet_id = azurerm_subnet.aks.id
    }

    identity {
        type = "SystemAssigned"
    }

    network_profile {
        network_plugin = "azure"
        dns_service_ip = "10.0.2.10"
        service_cidr   = "10.0.2.0/24"
    }
}
