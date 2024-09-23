resource "google_storage_bucket" "tf_state" {
  provider = google-beta

  name     = "chmurkowe_wiadro"
  location = var.gcp_region

  public_access_prevention = "enforced"
  storage_class            = "STANDARD"

  labels = {
    env          = "priv"
    git_repo     = "gcp"
    tf_workspace = "${terraform.workspace}"
  }
}
