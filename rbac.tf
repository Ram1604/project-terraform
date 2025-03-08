resource "google_project_iam_member" "bucket_access_tag" {
    project = var.project_id
    member = "serviceAccount:svc-tag-iam@project-terraform-11.iam.gserviceaccount.com"
    for_each = toset([
        "roles/storage.admin",
    ])
    role = each.key 
    condition {
        title = "bucket_condition"
        description = "Condition to allow access to the bucket"
        expression = <<-EOF
        
        (resource.matchTag("project-terraform-11/ssot_datalayer", "core"))
        EOF
    }
}