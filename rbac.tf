resource "google_project_iam_member" "bucket_access_tag" {
    project = var.project_id
    member = "serviceAccount:svc-tag-iam@project-terraform-11.iam.gserviceaccount.com"
    for_each = toset([
        "roles/storage.admin",
    ])
    role = each.key 
}