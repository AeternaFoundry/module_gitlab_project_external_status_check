resource "gitlab_project_external_status_check" "project_external_status_checks" {
  for_each = var.project_external_status_checks

  external_url         = each.value.external_url
  name                 = each.value.name
  project_id           = each.value.project_id
  protected_branch_ids = each.value.protected_branch_ids
  shared_secret        = each.value.shared_secret
}

