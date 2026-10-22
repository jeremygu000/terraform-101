locals {
  application_name = "terraform-101"

  environment_prefix = "${local.application_name}-${var.environment_name}-${random_string.suffix.result}"
}