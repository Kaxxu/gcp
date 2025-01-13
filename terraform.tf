terraform {
  required_version = "1.10.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.15.0"
    }


    google-beta = {
      source  = "hashicorp/google-beta"
      version = "6.15.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "5.83.1"
    }
  }
  backend "s3" {
    bucket               = "terraform-state-kaxxu"
    key                  = "gcp/gcp-priv.tfstate"
    workspace_key_prefix = "gcp"
    region               = "eu-west-1"
  }
}

provider "aws" {
  alias  = "aws"
  region = var.aws_region

  default_tags {
    tags = {
      Name = var.project_name
      Repo = "GitHub/Kaxxu/gcp"
    }
  }
}

provider "google" {
  project = local.aws_ssm_gcp_priv
  alias   = "google-priv"
  region  = var.gcp_region

  default_labels = {
    env  = var.project_name
    repo = "github-kaxxu-gcp"
  }
}

provider "google-beta" {
  project = local.aws_ssm_gcp_priv
  alias   = "google-beta-priv"
  region  = var.gcp_region

  default_labels = {
    env  = var.project_name
    repo = "github-kaxxu-gcp"
  }
}
