locals {
  application_name = "terraform-101"
  environment_name = "dev"

  environment_prefix = "${local.application_name}-${local.environment_name}"
}