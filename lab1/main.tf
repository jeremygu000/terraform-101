resource "random_string" "suffix" {
  length  = var.suffix_length
  upper   = false
  special = false
}