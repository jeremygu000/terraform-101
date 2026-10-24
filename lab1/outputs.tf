output "application_name" {
  value = local.application_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_prefix" {
  value = local.environment_prefix
}

output "database_password" {
  value     = var.database_password
  sensitive = true
}