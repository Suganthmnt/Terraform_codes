provider "azurerm" {
features {}
  
client_id        = var.client_id
client_secret    = var.client_secret
tenant_id        = var.tenant_id
subscription_id  =  var.subscription_id

}

locals {

workspace_name = terraform.workspace

}

# Create a resource group
resource "azurerm_resource_group" "RG-Suganth-test" {
for_each = toset(var.RG_name)
name     =  "${terraform.workspace}-${each.value}"
location =  var.RG_location


}

output "RG_names_list" {

    value = [for rg in azurerm_resource_group.RG-Suganth-test : rg.name]
}

resource "azurerm_virtual_network" "VNET-Suganth-test" {
  name                = var.VNET_name
  location            = var.RG_location
  resource_group_name = "${terraform.workspace}-${var.VNET_RG_name}"
  address_space       = var.VNET_Address

  depends_on = [azurerm_resource_group.RG-Suganth-test]
}

resource "azurerm_subnet" "SNET-Suganth-test" {
  for_each = { for SNET in var.subnet_config : SNET.name => SNET }
  name                 = each.value.name
  resource_group_name  = "${terraform.workspace}-${var.VNET_RG_name}"
  virtual_network_name = azurerm_virtual_network.VNET-Suganth-test.name
  address_prefixes     = [each.value.SNET_Address]

  depends_on = [azurerm_virtual_network.VNET-Suganth-test]

}
