output "application_name" {
  value = local.application_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_prefix" {
  value = local.environment_prefix

  # Outputs support preconditions, checked before Terraform exposes this value.
  precondition {
    condition     = startswith(local.environment_prefix, "${local.application_name}-${var.environment_name}-")
    error_message = "environment_prefix must start with the application and environment names."
  }
}

output "database_password" {
  value     = var.database_password
  sensitive = true
}
