resource "azurerm_service_plan" "plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type  = "Linux"
  sku_name = "B1"
}

resource "azurerm_linux_web_app" "webapp" {

  name                = var.webapp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  service_plan_id = azurerm_service_plan.plan.id

  identity {
    type = "SystemAssigned"
  }

  site_config {
  }
}