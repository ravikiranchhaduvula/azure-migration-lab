resource "azurerm_role_assignment" "acr_pull" {

  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"

  principal_id = azurerm_linux_web_app.webapp.identity[0].principal_id

  depends_on = [
    azurerm_linux_web_app.webapp,
    azurerm_container_registry.acr
  ]
}