variable "suffix_length" {
  type = number

  # Keep the random suffix within a practical range and require an integer.
  validation {
    condition     = var.suffix_length >= local.min_suffix_length && var.suffix_length <= local.max_suffix_length && var.suffix_length == floor(var.suffix_length)
    error_message = "suffix_length must be a whole number between ${local.min_suffix_length} and ${local.max_suffix_length}."
  }
}

variable "environment_name" {
  type = string

  # Restrict names to the environments configured by this project.
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment_name)
    error_message = "environment_name must be one of: dev, test, or prod."
  }
}

variable "database_password" {
  type      = string
  sensitive = true

  # Require a minimum password length for basic strength.
  validation {
    condition     = length(var.database_password) >= local.min_database_password_length
    error_message = "database_password must be at least ${local.min_database_password_length} characters long."
  }
}
