output "project_external_status_checks_id" {
  description = "Map of id values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no id are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_external_status_checks_external_url" {
  description = "Map of external_url values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no external_url are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.external_url if v.external_url != null && length(v.external_url) > 0 }
}
output "project_external_status_checks_hmac" {
  description = "Map of hmac values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no hmac are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.hmac if v.hmac != null }
}
output "project_external_status_checks_name" {
  description = "Map of name values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no name are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "project_external_status_checks_project_id" {
  description = "Map of project_id values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no project_id are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.project_id if v.project_id != null }
}
output "project_external_status_checks_protected_branch_ids" {
  description = "Map of protected_branch_ids values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no protected_branch_ids are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.protected_branch_ids if v.protected_branch_ids != null && length(v.protected_branch_ids) > 0 }
}
output "project_external_status_checks_shared_secret" {
  description = "Map of shared_secret values across all project_external_status_checks, keyed the same as var.project_external_status_checks except keys with no shared_secret are omitted"
  value       = { for k, v in gitlab_project_external_status_check.project_external_status_checks : k => v.shared_secret if v.shared_secret != null && length(v.shared_secret) > 0 }
  sensitive   = true
}

