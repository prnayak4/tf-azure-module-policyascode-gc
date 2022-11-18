/*resource "azurerm_role_assignment" "guest_configuration" {
  scope                            = data.azurerm_subscription.current.id
  role_definition_name             = "Contributor"
  principal_id                     = azurerm_subscription_policy_assignment.guest_configuration.identity[0].principal_id
  skip_service_principal_aad_check = true
}
*/