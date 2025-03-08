resource "google_storage_bucket" "bucket_1" {
  name = "tag-base-access"
  project = var.project_id
  location = "us-central1"
}