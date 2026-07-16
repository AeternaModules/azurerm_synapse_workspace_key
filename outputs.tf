output "synapse_workspace_keys_id" {
  description = "Map of id values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = { for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_workspace_keys_active" {
  description = "Map of active values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = { for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : k => v.active if v.active != null }
}
output "synapse_workspace_keys_customer_managed_key_name" {
  description = "Map of customer_managed_key_name values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = { for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : k => v.customer_managed_key_name if v.customer_managed_key_name != null && length(v.customer_managed_key_name) > 0 }
}
output "synapse_workspace_keys_customer_managed_key_versionless_id" {
  description = "Map of customer_managed_key_versionless_id values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = { for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : k => v.customer_managed_key_versionless_id if v.customer_managed_key_versionless_id != null && length(v.customer_managed_key_versionless_id) > 0 }
}
output "synapse_workspace_keys_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = { for k, v in azurerm_synapse_workspace_key.synapse_workspace_keys : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}

