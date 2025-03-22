resource "azurerm_resource_group" "data" {
  name     = "${var.prefix}-resources"  
  location = var.location
}

module "apim_module" {
  source = "./modules/az-apim"
  location = var.location  
  res_group_name = azurerm_resource_group.data.name 
}
