variable "suffix_length" {
  type = number
}

variable "environment_name" {
  type = string
}

variable "database_password" {
  type      = string
  sensitive = true
}