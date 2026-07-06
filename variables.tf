variable "synapse_workspace_keys" {
  description = <<EOT
Map of synapse_workspace_keys, attributes below
Required:
    - active
    - customer_managed_key_name
    - synapse_workspace_id
Optional:
    - customer_managed_key_versionless_id
EOT

  type = map(object({
    active                              = bool
    customer_managed_key_name           = string
    synapse_workspace_id                = string
    customer_managed_key_versionless_id = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_workspace_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: customer_managed_key_versionless_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: customer_managed_key_versionless_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

