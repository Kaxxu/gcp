terraform {
  required_version = "1.9.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.4.0"
    }


    #     google-beta = {
    #       source  = "hashicorp/google"
    #       version = "6.4.0"
    #     }
  }

  backend "gcs" {
    bucket = "chmurkowe_wiadro"
    prefix = "terraform/state"
  }

}

provider "google" {
  project = "priv"
  region  = var.gcp_region

  #   default_labels = {
  #     env          = "priv"
  #     git_repo     = "gcp"
  #     tf_workspace = "${terraform.workspace}"
  #   }
}

# provider "google-beta" {
#   project = "priv"
#   region  = "europe-west1"
# }
