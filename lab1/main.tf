resource "random_string" "suffix" {
  length  = var.suffix_length
  upper   = false
  special = false

  lifecycle {
    # Check the resource input before Terraform creates or updates it.
    precondition {
      condition     = var.suffix_length >= local.min_suffix_length
      error_message = "suffix_length must be at least ${local.min_suffix_length} before generating the suffix."
    }

    # Check the generated resource result; self refers to this random_string resource.
    postcondition {
      condition     = length(self.result) == var.suffix_length
      error_message = "The generated suffix length must match suffix_length."
    }
  }
}
