terraform {
  backend "gcs" {
    bucket = "terraform_statefile_store"
    prefix = "terraform/state"
  }
}