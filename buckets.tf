resource "google_storage_bucket" "bucket_1" {
  name = "tag-base-access"
  project = var.project_id
  location = "us-central1"
}

resource "google_tags_location_tag_binding" "bucket_tag" {
  parent    = google_storage_bucket.bucket_1.name
  tag_value = "tagValues/281481500673264"
  location = "us-central1"
}