output "synapse_workspace_keys" {
  description = "All synapse_workspace_key resources"
  value       = azurerm_synapse_workspace_key.synapse_workspace_keys
}
output "synapse_workspace_keys_active" {
  description = "List of active values across all synapse_workspace_keys"
  value       = [for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : v.active]
}
output "synapse_workspace_keys_customer_managed_key_name" {
  description = "List of customer_managed_key_name values across all synapse_workspace_keys"
  value       = [for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : v.customer_managed_key_name]
}
output "synapse_workspace_keys_customer_managed_key_versionless_id" {
  description = "List of customer_managed_key_versionless_id values across all synapse_workspace_keys"
  value       = [for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : v.customer_managed_key_versionless_id]
}
output "synapse_workspace_keys_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_keys"
  value       = [for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : v.synapse_workspace_id]
}

