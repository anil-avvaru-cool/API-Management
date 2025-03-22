resource "azurerm_api_management" "example" {
  name                = "avvaru27-apim"
  location = var.location
  resource_group_name = var.res_group_name
  publisher_name      = "AnilCo"
  publisher_email     = "anil.avvaru@outlook.com"
  sku_name = "Developer_1"
}