output "action_modules_id" {
  description = "Map of id values across all action_modules, keyed the same as var.action_modules except keys with no id are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "action_modules_actions_using_module_total" {
  description = "Map of actions_using_module_total values across all action_modules, keyed the same as var.action_modules except keys with no actions_using_module_total are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.actions_using_module_total if v.actions_using_module_total != null }
}
output "action_modules_all_changes_published" {
  description = "Map of all_changes_published values across all action_modules, keyed the same as var.action_modules except keys with no all_changes_published are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.all_changes_published if v.all_changes_published != null }
}
output "action_modules_code" {
  description = "Map of code values across all action_modules, keyed the same as var.action_modules except keys with no code are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.code if v.code != null && length(v.code) > 0 }
}
output "action_modules_dependencies" {
  description = "Map of dependencies values across all action_modules, keyed the same as var.action_modules except keys with no dependencies are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.dependencies if v.dependencies != null && length(v.dependencies) > 0 }
}
output "action_modules_latest_version" {
  description = "Map of latest_version values across all action_modules, keyed the same as var.action_modules except keys with no latest_version are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.latest_version if v.latest_version != null && length(v.latest_version) > 0 }
}
output "action_modules_latest_version_number" {
  description = "Map of latest_version_number values across all action_modules, keyed the same as var.action_modules except keys with no latest_version_number are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.latest_version_number if v.latest_version_number != null }
}
output "action_modules_name" {
  description = "Map of name values across all action_modules, keyed the same as var.action_modules except keys with no name are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "action_modules_publish" {
  description = "Map of publish values across all action_modules, keyed the same as var.action_modules except keys with no publish are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.publish if v.publish != null }
}
output "action_modules_secrets" {
  description = "Map of secrets values across all action_modules, keyed the same as var.action_modules except keys with no secrets are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
  sensitive   = true
}
output "action_modules_version_id" {
  description = "Map of version_id values across all action_modules, keyed the same as var.action_modules except keys with no version_id are omitted"
  value       = { for k, v in auth0_action_module.action_modules : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}

