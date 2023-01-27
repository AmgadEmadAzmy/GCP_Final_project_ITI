#it's recommended to create service account for gke 
 resource "google_service_account" "node-service-account" {
 account_id = "node-service-account"
}

#grant access to service account usinf iam binding
resource "google_project_iam_binding" "node-service-account-iam" {
  project = "ace-tracker-375011"
  role    = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.node-service-account.email}"
  
}
