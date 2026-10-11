variable "project_external_status_checks" {
  description = <<EOT
Map of project_external_status_checks, attributes below
Required:
    - external_url
    - name
    - project_id
Optional:
    - protected_branch_ids
    - shared_secret
EOT

  type = map(object({
    external_url         = string
    name                 = string
    project_id           = number
    protected_branch_ids = optional(set(number))
    shared_secret        = optional(string)
  }))
}

